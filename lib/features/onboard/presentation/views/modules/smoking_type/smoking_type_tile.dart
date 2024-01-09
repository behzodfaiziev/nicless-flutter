import 'package:flutter/material.dart';

import '../../../../../../core/extensions/context_extension.dart';

class SmokingTypeTile extends StatelessWidget {
  const SmokingTypeTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.width * 0.4,
      width: context.width * 0.4,
      color: context.randomColor,
    );
  }
}
