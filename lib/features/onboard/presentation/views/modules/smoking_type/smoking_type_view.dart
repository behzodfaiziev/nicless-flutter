import 'package:flutter/material.dart';

import '../../../../../../core/extensions/context_extension.dart';
import '../../../../../../product/widgets/text/top_title.dart';
import 'smoking_type_tile.dart';

class OnboardingSmokingTypeView extends StatelessWidget {
  const OnboardingSmokingTypeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.mainHorizontalPadding,
      child: const Column(
        children: [
          Expanded(
            child: TopTitle(
              title: "Let's Start Your Journey",
              subTitle: 'Which do you currently use?',
              mainAxisAlignment: MainAxisAlignment.end,
            ),
          ),
          Expanded(
            flex: 5,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SmokingTypeTile(),
                SmokingTypeTile(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
