import '../../../../core/managers/network/i_network_manager.dart';
import '../../../../core/managers/network/models/error_model_custom.dart';
import 'rating_remote_data_source.dart';

class RatingRemoteDataSourceImpl implements RatingRemoteDataSource {
  RatingRemoteDataSourceImpl({
    required INetworkManager<ErrorModelCustom> network,
  }) : _network = network;
  final INetworkManager<ErrorModelCustom> _network;
}
