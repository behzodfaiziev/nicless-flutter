import 'model/permission_result_model.dart';

/// Interface for permission manager
abstract class IPermissionManager {
  Future<PermissionResultModel> getCameraPermission();

  Future<PermissionResultModel> getStoragePermission();

  Future<PermissionResultModel> getNotificationPermission();

  Future<PermissionResultModel> getPhotosPermission();

  Future<PermissionResultModel> getAppTrackingTransparency();
}
