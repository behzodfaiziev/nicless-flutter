import '../../../../core/error/exceptions/api_exception.dart';
import '../../../../core/error/failures/api_failure.dart';
import '../../../../product/data_objects/params/pagination_params.dart';
import '../models/rating_model.dart';
import 'rating_remote_data_source.dart';

class RatingRemoteDataSourceImpl implements RatingRemoteDataSource {
  RatingRemoteDataSourceImpl();

  @override
  Future<List<RatingModel>> getWeeklyRating(PaginationParams params) async {
    try {
      await Future<void>.delayed(const Duration(seconds: 1));
      return mockRatings;
    } catch (e) {
      throw APIException(message: e.toString());
    }
  }

  @override
  Future<List<RatingModel>> getMonthlyRating(PaginationParams params) async {
    try {
      await Future<void>.delayed(const Duration(seconds: 1));
      return mockRatings;
    } catch (e) {
      throw APIException(message: e.toString());
    }
  }

  @override
  Future<List<RatingModel>> getYearlyRating(PaginationParams params) async {
    try {
      await Future<void>.delayed(const Duration(seconds: 1));
      return mockRatings;
    } catch (e) {
      throw APIException(message: e.toString());
    }
  }

  final List<RatingModel> mockRatings = [
    const RatingModel(id: '1', rank: 1, averageCO2: 216, name: 'Izmir'),
    const RatingModel(id: '2', rank: 2, averageCO2: 378, name: 'Ankara'),
    const RatingModel(id: '3', rank: 3, averageCO2: 512, name: 'Istanbul'),
    const RatingModel(id: '4', rank: 4, averageCO2: 513, name: 'Antalya'),
    const RatingModel(id: '5', rank: 5, averageCO2: 528, name: 'Bursa'),
    const RatingModel(id: '6', rank: 6, averageCO2: 542, name: 'Marmaris'),
    const RatingModel(id: '7', rank: 7, averageCO2: 563, name: 'Çorlu'),
    const RatingModel(id: '8', rank: 8, averageCO2: 761, name: 'Adana'),
    const RatingModel(id: '9', rank: 9, averageCO2: 812, name: 'Kayseri'),
    const RatingModel(id: '10', rank: 10, averageCO2: 905, name: 'Mersin'),
    const RatingModel(id: '11', rank: 11, averageCO2: 924, name: 'Muratpasa'),
    const RatingModel(id: '12', rank: 12, averageCO2: 936, name: 'Denizli'),
    const RatingModel(id: '13', rank: 13, averageCO2: 945, name: 'Tekirdag'),
  ];
}
