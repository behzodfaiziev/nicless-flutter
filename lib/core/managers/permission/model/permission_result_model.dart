class PermissionResultModel {

  PermissionResultModel({
    required this.isGranted,
    this.isPermanentlyDenied = false,
  });
  final bool isGranted;
  final bool isPermanentlyDenied;
}
