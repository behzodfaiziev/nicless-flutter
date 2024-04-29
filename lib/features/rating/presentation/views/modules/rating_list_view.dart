import 'package:flutter/material.dart';

import '../../../../../product/utils/constants/ui_constants/padding_const.dart';
import '../../../data/models/rating_model.dart';
import 'rating_list_tile.dart';

class RatingListView extends StatelessWidget {
  const RatingListView({
    required this.data,
    super.key,
  });

  final List<RatingModel> data;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: PaddingConst.bottom100,
      itemCount: data.length,
      itemBuilder: (context, index) {
        return RatingListTile(rating: data[index]);
      },
    );
  }
}
