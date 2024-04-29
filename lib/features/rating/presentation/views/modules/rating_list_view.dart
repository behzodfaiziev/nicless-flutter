import 'package:flutter/material.dart';

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
      itemCount: data.length,
      itemBuilder: (context, index) {
        return RatingListTile(rating: data[index]);
      },
    );
  }
}
