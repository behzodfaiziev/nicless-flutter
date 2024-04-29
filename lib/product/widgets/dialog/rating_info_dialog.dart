import 'package:flutter/material.dart';

import '../../../core/extensions/context_extension.dart';
import '../../../core/widgets/buttons/base_elevated_button.dart';
import '../../utils/constants/ui_constants/padding_const.dart';
import '../../utils/constants/ui_constants/radius_const.dart';

class RatingInfoDialog extends StatelessWidget {
  const RatingInfoDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape:
          RoundedRectangleBorder(borderRadius: RadiusConstEnum.high.circular),
      child: Padding(
        padding: PaddingConst.vertical20 + PaddingConst.horizontal24,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'How is rating'
              '\ncalculated?',
              style: context.primaryTextTheme.titleLarge,
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: PaddingConst.vertical20,
              child: Text(
                'This ranking shows cities based on average CO2 emissions '
                'per person from smoking. Lower emissions mean higher '
                'ranks, reflecting less CO2 emitted per person. '
                'It offers insight into smoking-related environmental '
                'impact, focusing solely on CO2 emissions.',
                style: context.primaryTextTheme.titleSmall,
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: PaddingConst.horizontal30,
              child: BaseElevatedButton(
                buttonElevation: 2,
                backgroundColor: context.colorScheme.primary,
                child: Text(
                  'Close',
                  style: context.primaryTextTheme.titleMedium,
                ),
                onPressed: () {
                  context.pop();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
