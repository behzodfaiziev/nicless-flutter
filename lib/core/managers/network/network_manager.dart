import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';

import 'entities/created_id_response.dart';
import 'entities/network_query_parameters.dart';
import 'entities/network_url_path.dart';
import 'i_network_manager.dart';
import 'interface/i_fire_response_model.dart';
import 'interface/i_network_model.dart';
import 'models/empty_model.dart';
import 'models/error_model.dart';
import 'models/response_model.dart';

class NetworkManager<E extends INetworkModel<E>?> extends INetworkManager<E> {

  NetworkManager();
  static const String id = 'id';

  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  @override
  Future<String> createAUniqueId({required String collectionPath}) async {
    try {
      final DocumentReference documentReference =
          _firestore.collection(collectionPath).doc();
      return documentReference.id;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<CreatedIdResponse> post({
    required NetworkUrlPath url,
    required Map<String, dynamic> body,
  }) async {
    try {
      final DocumentReference documentReference = _getDocumentReference(url);

      await documentReference.set(body);

      return CreatedIdResponse(id: documentReference.id);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<IResponseModel<R?, E?>> get<T extends INetworkModel<T>, R>({
    required NetworkUrlPath url,
    required T parseModel,
    NetworkQueryParameters? queryParameters,
  }) async {
    try {
      final CollectionReference<Object?> collection =
          _getCollectionReference(url);
      final Query<Object?> query = queryParameters != null
          ? _setQuery(collection, queryParameters)
          : collection;

      final QuerySnapshot<Object?> result = await query.get();

      final List<QueryDocumentSnapshot<Object?>> queryList = result.docs;

      return _getResponseResult<T, R>(queryList, parseModel);
    } catch (e) {
      return _onError<R>(e);
    }
  }

  @override
  Future<void> put<T>({
    required NetworkUrlPath url,
    required Map<String, dynamic> body,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      await _getDocumentReference(url).update(body);
      return;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> delete<T>({required NetworkUrlPath url}) async {
    try {
      await _getDocumentReference(url).delete();
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<UserCredential> signInAnonymously() async {
    return _auth.signInAnonymously();
  }

  @override
  Future<void> signOut() async {
    return _auth.signOut();
  }

  @override
  Future<User?> currentUser() async {
    return _auth.currentUser;
  }

  @override
  Future<Stream<User?>> authStateChanges() async {
    return _auth.authStateChanges();
  }

  DocumentReference _getDocumentReference(NetworkUrlPath url) {
    late DocumentReference documentReference;
    if (url.is3Nested) {
      documentReference = _firestore
          .collection(url.path)
          .doc(url.docId)
          .collection(url.path2!)
          .doc(url.docId2)
          .collection(url.path3!)
          .doc(url.docId3);
    } else if (url.is2Nested) {
      documentReference = _firestore
          .collection(url.path)
          .doc(url.docId)
          .collection(url.path2!)
          .doc(url.docId2);
    } else {
      documentReference = _firestore.collection(url.path).doc();
    }
    return documentReference;
  }

  CollectionReference _getCollectionReference(NetworkUrlPath url) {
    late CollectionReference collectionReference;
    if (url.is3Nested) {
      collectionReference = _firestore
          .collection(url.path)
          .doc(url.docId)
          .collection(url.path2!)
          .doc(url.docId2)
          .collection(url.path3!);
    } else if (url.is2Nested) {
      collectionReference =
          _firestore.collection(url.path).doc(url.docId).collection(url.path2!);
    } else {
      collectionReference = _firestore.collection(url.path);
    }
    return collectionReference;
  }

  Query<Object?> _setQuery(
    CollectionReference collectionReference,
    NetworkQueryParameters queryParameters,
  ) {
    Query<Object?> query = queryParameters.isDescending
        ? collectionReference.orderBy(queryParameters.orderBy!,
            descending: queryParameters.isDescending,)
        : collectionReference.orderBy(queryParameters.orderBy!);

    if (queryParameters.orderBy != null) {
      query = query.orderBy(queryParameters.orderBy!);
    }
    if (queryParameters.limit != null) {
      query = query.limit(queryParameters.limit!);
    }
    if (queryParameters.whereField != null &&
        queryParameters.whereIsEqualTo != null) {
      query = query.where(queryParameters.whereField!,
          isEqualTo: queryParameters.whereIsEqualTo,);
    }
    if (queryParameters.whereField2 != null &&
        queryParameters.whereIsEqualTo2 != null) {
      query = query.where(queryParameters.whereField2!,
          isEqualTo: queryParameters.whereIsEqualTo2,);
    }
    return query;
  }

  ResponseModel<R, E> _getResponseResult<T extends INetworkModel<T>, R>(
    dynamic data,
    T parserModel,
  ) {
    final model = _parseBody<R, T>(data, parserModel, true);

    return ResponseModel<R, E>(data: model);
  }

  R? _parseBody<R, T extends INetworkModel<T>>(dynamic responseBody, T model,
      [bool isLoggerEnabled = false,]) {
    try {
      if (responseBody is List<QueryDocumentSnapshot<Object?>>?) {
        final List<Map<String, dynamic>?>? mappedList =
            responseBody?.map((querySnapshot) {
          if (querySnapshot.data() == null) return null;
          return querySnapshot.data()! as Map<String, dynamic>;
        }).toList();

        return mappedList
            ?.map((data) => model.fromJson(data!))
            .cast<T>()
            .toList() as R;
      }
      if (responseBody is List) {
        return responseBody
            .map((data) => model.fromJson(data as Map<String, dynamic>))
            .cast<T>()
            .toList() as R;
      } else if (responseBody is Map<String, dynamic>) {
        return model.fromJson(responseBody) as R;
      } else {
        if (R is EmptyModel || R == EmptyModel) {
          return EmptyModel(name: responseBody.toString()) as R;
        } else {
          debugPrint('$responseBody, could not be parsed.');
          return null;
        }
      }
    } catch (e) {
      debugPrint(
        'Parse Error: $e - response body: '
        '$responseBody T model: $T , R model: $R ',
      );
    }
    return null;
  }

  ResponseModel<R, E> _onError<R>(Object e) {
    final errorResponse = e.toString();
    debugPrint(errorResponse);
    final error = ErrorModel<E>(description: errorResponse);
    return ResponseModel<R, E>(
        error: ErrorModel<E>(
            description: error.description, statusCode: error.statusCode,),);
  }
}
