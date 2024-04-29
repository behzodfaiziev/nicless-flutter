import 'package:flutter/material.dart';

import 'rating_info_dialog.dart';

class AppDialog {
  static Future<void> showRatingInfo(BuildContext context) async {
    await showDialog<bool>(
      context: context,
      builder: (ctx) => const RatingInfoDialog(),
    );
  }
}
