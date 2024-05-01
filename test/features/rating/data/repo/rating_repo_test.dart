import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:nicless_flutter/core/error/exceptions/api_exception.dart';
import 'package:nicless_flutter/core/error/failures/api_failure.dart';
import 'package:nicless_flutter/features/rating/data/date_sources/rating_remote_data_source.dart';
import 'package:nicless_flutter/features/rating/data/models/rating_model.dart';
import 'package:nicless_flutter/features/rating/data/repo/rating_repo_impl.dart';
import 'package:nicless_flutter/features/rating/domain/repo/rating_repo.dart';
import 'package:nicless_flutter/product/data_objects/params/pagination_params.dart';

class MockRatingRemoteDataSource extends Mock
    implements RatingRemoteDataSource {}

void main() {
  late RatingRemoteDataSource remoteDataSource;
  late RatingRepoImpl repoImpl;

  const PaginationParams paginationParams = PaginationParams(page: 1);
  const APIException apiException = APIException(
    statusCode: 500,
    message: 'Internal Server Error',
  );

  const List<RatingModel> mockRatingList = [
    RatingModel(
      id: '123',
      averageCO2: 1,
      name: 'John Doe',
      rank: 1,
    ),
    RatingModel(
      id: '456',
      averageCO2: 2,
      name: 'Jane Doe',
      rank: 2,
    ),
  ];

  setUp(() {
    remoteDataSource = MockRatingRemoteDataSource();
    repoImpl = RatingRepoImpl(remoteDataSource: remoteDataSource);
  });

  test('should be a subclass of [AuthRepo]', () {
    expect(repoImpl, isA<RatingRepo>());
  });

  group('getWeeklyRating', () {
    test(
        'should call the [RatingRemoteDataSource.getWeeklyRating] '
        'and return the right data', () async {
      // arrange
      when(() => remoteDataSource.getWeeklyRating(paginationParams))
          .thenAnswer((_) async {
        return mockRatingList;
      });
      // act
      final result = await repoImpl.getWeeklyRating(paginationParams);
      // assert
      expect(result, const Right<dynamic, List<RatingModel>>(mockRatingList));
      verify(() => remoteDataSource.getWeeklyRating(paginationParams))
          .called(1);
      verifyNoMoreInteractions(remoteDataSource);
    });

    test('should return a [APIFailure] when call to remote source fails',
        () async {
      // arrange
      when(() => remoteDataSource.getWeeklyRating(paginationParams))
          .thenThrow(apiException);
      // act
      final result = await repoImpl.getWeeklyRating(paginationParams);
      // assert
      expect(
        result,
        Left<APIFailure, void>(APIFailure.fromAPIException(apiException)),
      );
      verify(() => remoteDataSource.getWeeklyRating(paginationParams))
          .called(1);
      verifyNoMoreInteractions(remoteDataSource);
    });
  });

  group('getMonthlyRating', () {
    test(
        'should call the [RatingRemoteDataSource.getMonthlyRating] '
        'and return the right data', () async {
      // arrange
      when(() => remoteDataSource.getMonthlyRating(paginationParams))
          .thenAnswer((_) async {
        return mockRatingList;
      });
      // act
      final result = await repoImpl.getMonthlyRating(paginationParams);
      // assert
      expect(result, const Right<dynamic, List<RatingModel>>(mockRatingList));
      verify(() => remoteDataSource.getMonthlyRating(paginationParams))
          .called(1);
      verifyNoMoreInteractions(remoteDataSource);
    });

    test('should return a [APIFailure] when call to remote source fails',
        () async {
      // arrange
      when(() => remoteDataSource.getMonthlyRating(paginationParams))
          .thenThrow(apiException);
      // act
      final result = await repoImpl.getMonthlyRating(paginationParams);
      // assert
      expect(
        result,
        Left<APIFailure, void>(APIFailure.fromAPIException(apiException)),
      );
      verify(() => remoteDataSource.getMonthlyRating(paginationParams))
          .called(1);
      verifyNoMoreInteractions(remoteDataSource);
    });
  });

  group('getYearlyRating', () {
    test(
        'should call the [RatingRemoteDataSource.getYearlyRating] '
        'and return the right data', () async {
      // arrange
      when(() => remoteDataSource.getYearlyRating(paginationParams))
          .thenAnswer((_) async {
        return mockRatingList;
      });
      // act
      final result = await repoImpl.getYearlyRating(paginationParams);
      // assert
      expect(result, const Right<dynamic, List<RatingModel>>(mockRatingList));
      verify(() => remoteDataSource.getYearlyRating(paginationParams))
          .called(1);
      verifyNoMoreInteractions(remoteDataSource);
    });

    test('should return a [APIFailure] when call to remote source fails',
        () async {
      // arrange
      when(() => remoteDataSource.getYearlyRating(paginationParams))
          .thenThrow(apiException);
      // act
      final result = await repoImpl.getYearlyRating(paginationParams);
      // assert
      expect(
        result,
        Left<APIFailure, void>(APIFailure.fromAPIException(apiException)),
      );
      verify(() => remoteDataSource.getYearlyRating(paginationParams))
          .called(1);
      verifyNoMoreInteractions(remoteDataSource);
    });
  });
}
