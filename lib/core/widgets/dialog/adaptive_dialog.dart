import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../product/utils/constants/ui_constants/radius_const.dart';
import '../../extensions/context_extension.dart';
import '../../init/config/app_config.dart';

abstract class IAdaptiveDialog {
  Future<void> alert({
    required BuildContext context,
    required String title,
    required String message,
    required String confirmText,
    required void Function({bool isConfirm}) onPressed,
    String? cancelText,
    Color? barrierColor,
  });
}

class AdaptiveDialog extends IAdaptiveDialog {
  @override
  Future<void> alert(
      {required BuildContext context,
      required String title,
      required String message,
      required String confirmText,
      required void Function({bool isConfirm}) onPressed,
      String? cancelText,
      Color? barrierColor}) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false,
      barrierColor: barrierColor ?? Colors.black26,
      builder: (BuildContext context) {
        return AppConfig.instance.isAndroid
            ? _materialDialog(
                context: context,
                title: title,
                message: message,
                confirmText: confirmText,
                onPressed: onPressed,
                cancelText: cancelText,
              )
            : _cupertinoDialog(
                context: context,
                title: title,
                message: message,
                confirmText: confirmText,
                onPressed: onPressed,
                cancelText: cancelText,
              );
      },
    );
  }

  static AlertDialog _materialDialog({
    required BuildContext context,
    required String title,
    required String message,
    required String confirmText,
    required void Function({bool isConfirm}) onPressed,
    String? cancelText,
  }) {
    return AlertDialog(
      title: Text(title),
      content: Text(message),
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: RadiusConst.largerRadius,
      ),
      actions: <Widget>[
        if (cancelText != null)
          TextButton(
            onPressed: () {
              onPressed(isConfirm: false);
              context.pop();
            },
            child: Text(cancelText),
          ),
        TextButton(
          onPressed: () {
            onPressed(isConfirm: true);
            context.pop();
          },
          child: Text(confirmText),
        ),
      ],
    );
  }

  static CupertinoAlertDialog _cupertinoDialog({
    required BuildContext context,
    required String title,
    required String message,
    required String confirmText,
    required void Function({bool isConfirm}) onPressed,
    String? cancelText,
  }) {
    return CupertinoAlertDialog(
      title: Text(title),
      content: Text(message),
      actions: <Widget>[
        if (cancelText != null)
          CupertinoButton(
            onPressed: () {
              onPressed(isConfirm: false);
              context.pop();
            },
            child: Text(cancelText),
          ),
        CupertinoButton(
          onPressed: () {
            onPressed(isConfirm: true);
            context.pop();
          },
          child: Text(confirmText),
        ),
      ],
    );
  }
}
