import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

import '../../product/theme/app_colors.dart';
import '../extensions/context_extension.dart';

class BaseMarkDown extends StatelessWidget {
  const BaseMarkDown({
    required this.text,
    super.key,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return MarkdownBody(
      data: text,
      styleSheet: MarkdownStyleSheet(
        p: context.textTheme.bodyMedium?.copyWith(color: AppColors.white),
      ),
    );
  }
}
