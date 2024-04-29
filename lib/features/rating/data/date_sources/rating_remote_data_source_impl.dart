import '../../../../product/data_objects/params/pagination_params.dart';
import '../models/rating_model.dart';
import 'rating_remote_data_source.dart';

class RatingRemoteDataSourceImpl implements RatingRemoteDataSource {
  RatingRemoteDataSourceImpl();

  @override
  Future<List<RatingModel>> getWeeklyRating(PaginationParams params) async {
    return mockRatings;
  }

  @override
  Future<List<RatingModel>> getMonthlyRating(PaginationParams params) async {
    return mockRatings;
  }

  @override
  Future<List<RatingModel>> getYearlyRating(PaginationParams params) async {
    return mockRatings;
  }

  final List<RatingModel> mockRatings = [
    RatingModel(id: '1', rank: 1, averageCO2: 216, name: 'Izmir'),
    RatingModel(id: '2', rank: 2, averageCO2: 378, name: 'Ankara'),
    RatingModel(id: '3', rank: 3, averageCO2: 512, name: 'Istanbul'),
    RatingModel(id: '4', rank: 4, averageCO2: 513, name: 'Antalya'),
    RatingModel(id: '5', rank: 5, averageCO2: 528, name: 'Bursa'),
    RatingModel(id: '6', rank: 6, averageCO2: 542, name: 'Marmaris'),
    RatingModel(id: '7', rank: 7, averageCO2: 563, name: 'Çorlu'),
    RatingModel(id: '8', rank: 8, averageCO2: 761, name: 'Adana'),
    RatingModel(id: '9', rank: 9, averageCO2: 812, name: 'Kayseri'),
    RatingModel(id: '10', rank: 10, averageCO2: 905, name: 'Mersin'),
    RatingModel(id: '11', rank: 11, averageCO2: 924, name: 'Muratpasa'),
    RatingModel(id: '12', rank: 12, averageCO2: 936, name: 'Denizli'),
    RatingModel(id: '13', rank: 13, averageCO2: 945, name: 'Tekirdag'),
  ];
}
