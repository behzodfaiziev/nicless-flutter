import 'package:flutter/material.dart';

import '../../utils/constants/ui_constants/padding_const.dart';

class TopTitle extends StatelessWidget {
  const TopTitle({
    required this.title,
    this.subTitle,
    this.mainAxisAlignment,
    super.key,
  });

  final String title;
  final String? subTitle;
  final MainAxisAlignment? mainAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.center,
      children: [
        Text(title,
            style: Theme.of(context).textTheme.titleLarge,
            textAlign: TextAlign.center,),
        if (subTitle != null)
          Padding(
            padding: PaddingConst.top4,
            child: Text(
              subTitle!,
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
      ],
    );
  }
}
