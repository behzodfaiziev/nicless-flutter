import 'package:flutter/material.dart';

import '../../../core/widgets/snack_bar/base_animated_snack_bar.dart';
import '../../utils/constants/ui_constants/padding_const.dart';

class AppToast {
  static void success({
    required BuildContext context,
    required String message,
    String title = 'Success',
    int closeAfterSeconds = 3,
  }) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        behavior: SnackBarBehavior.floating,
        elevation: 0,
        duration: Duration(seconds: closeAfterSeconds),
        margin: AppPadding.bottom16,
        backgroundColor: Colors.transparent,
        content: BaseAnimatedSnackBar(
          message: message,
          isSuccess: true,
          closeAfterSeconds: closeAfterSeconds,
        ),
      ),
    );
  }

  static void error({
    required BuildContext context,
    String? message,
    String title = 'Error',
    int closeAfterSeconds = 3,
  }) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        behavior: SnackBarBehavior.floating,
        elevation: 0,
        margin: AppPadding.bottom12,
        backgroundColor: Colors.transparent,
        content: BaseAnimatedSnackBar(
          message: message ?? 'Something went wrong',
          isSuccess: false,
          closeAfterSeconds: closeAfterSeconds,
        ),
      ),
    );
  }
}
