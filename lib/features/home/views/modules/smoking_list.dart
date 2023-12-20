import 'package:flutter/material.dart';

import '../../../../core/extensions/context_extension.dart';
import 'smoking_tile.dart';

class SmokingList extends StatelessWidget {
  const SmokingList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 3,
      padding: context.mainHorizontalPadding,
      itemBuilder: (BuildContext context, int index) {
        return const SmokingTile();
      },
    );
  }
}
