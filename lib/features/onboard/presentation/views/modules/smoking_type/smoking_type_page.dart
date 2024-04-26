import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/extensions/context_extension.dart';
import '../../../../../../product/utils/constants/asset_paths/images_const.dart';
import '../../../../../../product/widgets/text/top_title.dart';
import '../../../bloc/onboarding_bloc.dart';
import 'smoking_type_tile.dart';

class SmokingTypePage extends StatefulWidget {
  const SmokingTypePage({super.key});

  @override
  State<SmokingTypePage> createState() => _SmokingTypePageState();
}

class _SmokingTypePageState extends State<SmokingTypePage> {
  final List<int> currentSelection = [];

  @override
  Widget build(BuildContext context) {
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
            flex: 3,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SmokingTypeTile(
                  assetPath: ImagesConst.instance.cigarette,
                  smokingName: 'Cigarette',
                  isSelected: currentSelection.contains(1),
                  onTap: () {
                    context.read<OnboardingBloc>().add(
                        currentSelection.contains(1)
                            ? const SmokingTypeRemoved(smokingType: 1)
                            : const SmokingTypeAdded(smokingType: 1),);
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
                    context.read<OnboardingBloc>().add(
                        currentSelection.contains(2)
                            ? const SmokingTypeRemoved(smokingType: 2)
                            : const SmokingTypeAdded(smokingType: 2),);
                    setState(() {
                      currentSelection.contains(2)
                          ? currentSelection.remove(2)
                          : currentSelection.add(2);
                    });
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
