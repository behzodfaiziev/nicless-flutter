import 'package:flutter/foundation.dart';
import 'package:permission_handler/permission_handler.dart';

import 'i_permission_manager.dart';
import 'model/permission_result_model.dart';

class PermissionManager extends IPermissionManager {
  bool _isPermissionIsBeingRequested = false;

  @override
  Future<PermissionResultModel> getCameraPermission(
      {void Function()? onPermanentlyDenied}) async {
    return getPermission(permission: Permission.camera);
  }

  @override
  Future<PermissionResultModel> getStoragePermission(
      {void Function()? onPermanentlyDenied}) async {
    return getPermission(permission: Permission.storage);
  }

  @override
  Future<PermissionResultModel> getNotificationPermission(
      {void Function()? onPermanentlyDenied}) async {
    return getPermission(permission: Permission.notification);
  }

  @override
  Future<PermissionResultModel> getPhotosPermission(
      {void Function()? onPermanentlyDenied}) async {
    return getPermission(permission: Permission.photos);
  }

  @override
  Future<PermissionResultModel> getAppTrackingTransparency(
      {void Function()? onPermanentlyDenied}) async {
    return getPermission(permission: Permission.appTrackingTransparency);
  }

  Future<PermissionResultModel> getPermission(
      {required Permission permission}) async {
    try {
      // if (kIsWeb && kDebugMode) {
      //   return PermissionResultModel(isGranted: true);
      // }

      if (_isPermissionIsBeingRequested) {
        return PermissionResultModel(isGranted: false);
      }

      _isPermissionIsBeingRequested = true;
      final PermissionStatus permissionStatus = await permission.status;

      if (permissionStatus.isGranted) {
        return PermissionResultModel(isGranted: true);
      }

      if (permissionStatus.isPermanentlyDenied) {
        return PermissionResultModel(
            isGranted: false, isPermanentlyDenied: true);
      }
      if (permissionStatus.isDenied ||
          permissionStatus.isRestricted ||
          permissionStatus.isLimited) {
        final PermissionStatus permissionStatus = await permission.request();
        return PermissionResultModel(
          isGranted: permissionStatus.isGranted,
          isPermanentlyDenied: permissionStatus.isPermanentlyDenied,
        );
      }

      return PermissionResultModel(isGranted: false);
    } finally {
      _isPermissionIsBeingRequested = false;
    }
  }
}
