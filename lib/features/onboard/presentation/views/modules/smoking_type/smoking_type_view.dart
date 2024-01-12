import 'package:flutter/material.dart';

import '../../../../../../core/extensions/context_extension.dart';
import '../../../../../../product/utils/constants/asset_paths/images_const.dart';
import '../../../../../../product/widgets/text/top_title.dart';
import 'smoking_type_tile.dart';

/// TODO: make it stateless
class OnboardingSmokingTypeView extends StatefulWidget {
  const OnboardingSmokingTypeView({super.key});

  @override
  State<OnboardingSmokingTypeView> createState() =>
      _OnboardingSmokingTypeViewState();
}

class _OnboardingSmokingTypeViewState extends State<OnboardingSmokingTypeView> {
  final List<int> currentSelection = [];

  @override
  Widget build(BuildContext context) {
    print('currentSelection: $currentSelection');
    return Padding(
      padding: context.mainHorizontalPadding,
      child: Column(
        children: [
          const Expanded(
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
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SmokingTypeTile(
                  assetPath: ImagesConst.instance.cigarette,
                  smokingName: 'Cigarette',
                  isSelected: currentSelection.contains(1),
                  onTap: () {
                    setState(() {
                      currentSelection.contains(1)
                          ? currentSelection.remove(1)
                          : currentSelection.add(1);
                    });
                  },
                ),
                SmokingTypeTile(
                  assetPath: ImagesConst.instance.vozol10KForestBerry,
                  smokingName: 'Vape',
                  isSelected: currentSelection.contains(2),
                  onTap: () {
                    setState(() {
                      currentSelection.contains(2)
                          ? currentSelection.remove(2)
                          : currentSelection.add(2);
                    });
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
