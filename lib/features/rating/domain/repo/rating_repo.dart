import '../../../../core/utility/typedef.dart';
import '../../../../product/data_objects/params/pagination_params.dart';
import '../../data/models/rating_model.dart';

abstract class RatingRepo {
  ResultFuture<List<RatingModel>> getWeeklyRating(PaginationParams params);

  ResultFuture<List<RatingModel>> getMonthlyRating(PaginationParams params);

  ResultFuture<List<RatingModel>> getYearlyRating(PaginationParams params);
}
