import 'package:flutter/material.dart';

import '../../../core/extensions/context_extension.dart';
import '../../../core/widgets/buttons/base_icon_button.dart';

class PopButton extends StatelessWidget {
  const PopButton({this.onPressed, super.key});

  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: SizedBox(
        width: 40,
        child: BaseIconButton(
          onPressed: onPressed ??
              () {
                context.pop();
              },
          child:
              Icon(Icons.arrow_back_ios, color: context.colorScheme.secondary),
        ),
      ),
    );
  }
}
