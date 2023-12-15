class PermissionResultModel {
  final bool isGranted;
  final bool isPermanentlyDenied;

  PermissionResultModel({
    required this.isGranted,
    this.isPermanentlyDenied = false,
  });
}
