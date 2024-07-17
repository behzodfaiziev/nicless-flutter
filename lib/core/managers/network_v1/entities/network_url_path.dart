/// UrlPathEntity is a class that contains the
/// path and docId of the document in the database.
///
/// [path2] and [docId2] are nested values of [path] and [docId].
/// [path3] and [docId3] are nested values of [path2] and [docId2].
class NetworkUrlPath {
  NetworkUrlPath({
    required this.path,
    this.docId,
    this.path2,
    this.docId2,
    this.path3,
    this.docId3,
  })  : assert(path != '', 'Path cannot be empty'),
        assert(
          path3 == null || (path2 != null && docId2 != null && docId != null),
          'If path3 is not null, then path2, docId2 and docId must not be null',
        ),
        assert(
          path2 == null || docId != null,
          'If path2 is not null, then docId must not be null',
        );

  final String path;
  final String? docId;
  final String? path2;
  final String? docId2;
  final String? path3;
  final String? docId3;

  bool get is3Nested {
    return path3 != null &&
        docId3 != null &&
        path2 != null &&
        docId2 != null &&
        docId != null;
  }

  bool get is2Nested {
    return path2 != null && docId2 != null && docId != null;
  }
}
