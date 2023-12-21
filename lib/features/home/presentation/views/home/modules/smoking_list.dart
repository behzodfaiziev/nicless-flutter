import 'package:flutter/material.dart';

import '../../../../../../core/extensions/context_extension.dart';
import '../../../../../../product/local_data/smoking_lists.dart';
import '../../../../domain/entities/smoking_entity.dart';
import 'smoking_tile.dart';

class SmokingList extends StatelessWidget {
  const SmokingList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 4,
      padding: context.mainHorizontalPadding,
      itemBuilder: (BuildContext context, int index) {
        final SmokingEntity smoking = SmokingLists.smokings[index];
        return  SmokingTile(smoking: smoking);
      },
    );
  }
}
