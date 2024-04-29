import '../../../../product/data_objects/params/pagination_params.dart';
import '../models/rating_model.dart';

abstract class RatingRemoteDataSource {
  Future<List<RatingModel>> getWeeklyRating(PaginationParams params);

  Future<List<RatingModel>> getMonthlyRating(PaginationParams params);

  Future<List<RatingModel>> getYearlyRating(PaginationParams params);
}
