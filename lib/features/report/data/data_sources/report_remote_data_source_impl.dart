import '../../../../core/managers/network/app_network_manager.dart';
import '../../../../core/managers/network/enum/app_request_type.dart';
import '../../../../product/constants/api_const.dart';
import '../models/periodic_report_model.dart';
import 'report_remote_data_source.dart';

class ReportRemoteDataSourceImpl implements ReportRemoteDataSource {
  ReportRemoteDataSourceImpl({required AppNetworkManager network})
      : _network = network;

  final AppNetworkManager _network;

  @override
  Future<PeriodicReportModel> periodicReport(String params) async {
    return _network.send<PeriodicReportModel, PeriodicReportModel>(
      ApiConst.periodicRecordOutputs(params),
      parseModel: const PeriodicReportModel(),
      method: AppRequestType.get,
    );
  }
}
