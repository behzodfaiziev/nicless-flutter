import '../../../../core/usecase/usecase.dart';
import '../../../../core/utility/typedef.dart';
import '../../../../product/data_objects/params/pagination_params.dart';
import '../../data/models/rating_model.dart';
import '../repo/rating_repo.dart';

class GetYearlyRating
    extends UserCaseWithParams<List<RatingModel>, PaginationParams> {
  GetYearlyRating(this._repo);

  final RatingRepo _repo;

  @override
  ResultFuture<List<RatingModel>> call(PaginationParams params) =>
      _repo.getYearlyRating(params);
}
