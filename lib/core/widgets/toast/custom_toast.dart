import 'package:flutter/material.dart';

class CustomToast {
  static ScaffoldFeatureController<SnackBar, SnackBarClosedReason>
      _showSnackBar({
    required BuildContext context,
    required String message,
    Color? textColor,
    Color? backgroundColor,
    String? snackBarText,
    Color? snackBarActionBackgroundColor,
    void Function()? onActionPressed,
  }) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content:
            Text(message, style: TextStyle(color: textColor, fontSize: 16)),
        backgroundColor: backgroundColor,
        action: snackBarText == null
            ? null
            : SnackBarAction(
                label: snackBarText,
                textColor: textColor,
                onPressed: onActionPressed ?? () {},
                backgroundColor: snackBarActionBackgroundColor,
              ),
        behavior: SnackBarBehavior.floating,
        dismissDirection: DismissDirection.horizontal,
        margin: const EdgeInsets.only(bottom: 40, left: 20, right: 20),
        duration: const Duration(seconds: 1),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6),
        ),
      ),
    );
  }

  static void successToast(
    BuildContext context,
    String message,
  ) {
    _showSnackBar(
      context: context,
      message: message,
      textColor: Colors.white,
      backgroundColor: Colors.green[800],
    );
  }

  static void errorToast(
    BuildContext context,
    String message,
  ) {
    _showSnackBar(
      context: context,
      message: message,
      textColor: Colors.white,
      backgroundColor: Colors.red[800],
    );
  }

  static void warningToast(
    BuildContext context,
    String message,
  ) {
    _showSnackBar(
      context: context,
      message: message,
      textColor: Colors.white,
      backgroundColor: Colors.orange[800],
    );
  }

  static void infoToast(
    BuildContext context,
    String message,
  ) {
    _showSnackBar(
      context: context,
      message: message,
      textColor: Colors.white,
      backgroundColor: Colors.blue[800],
    );
  }
}
