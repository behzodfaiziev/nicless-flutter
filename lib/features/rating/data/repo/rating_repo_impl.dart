import '../../../../core/utility/typedef.dart';
import '../../../../product/data_objects/params/pagination_params.dart';
import '../../domain/repo/rating_repo.dart';
import '../date_sources/rating_remote_data_source.dart';
import '../models/rating_model.dart';

class RatingRepoImpl  extends RatingRepo{
  RatingRepoImpl(this.ratingRemoteDataSource);

  final RatingRemoteDataSource ratingRemoteDataSource;

  @override
  ResultFuture<List<RatingModel>> getMonthlyRating(PaginationParams params) {
    // TODO: implement getMonthlyRating
    throw UnimplementedError();
  }

  @override
  ResultFuture<List<RatingModel>> getWeeklyRating(PaginationParams params) {
    // TODO: implement getWeeklyRating
    throw UnimplementedError();
  }

  @override
  ResultFuture<List<RatingModel>> getYearlyRating(PaginationParams params) {
    // TODO: implement getYearlyRating
    throw UnimplementedError();
  }

}
