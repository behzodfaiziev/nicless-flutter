import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../init/config/app_config.dart';

class BaseAdaptiveSwitch extends StatelessWidget {
  const BaseAdaptiveSwitch({
    required this.value,
    this.onChanged,
    this.activeColor,
    this.activeTrackColor,
    super.key,
  });

  final bool value;
  final Color? activeColor;
  final Color? activeTrackColor;
  final void Function({bool value})? onChanged;

  @override
  Widget build(BuildContext context) {
    return AppConfig.instance.isAndroid
        ? Switch(
            onChanged: (value) => onChanged?.call(value: value),
            value: value,
            activeColor: activeColor,
            activeTrackColor: activeTrackColor,
          )
        : CupertinoSwitch(
            onChanged: (value) => onChanged?.call(value: value),
            value: value,
            activeColor: activeTrackColor,
          );
  }
}
