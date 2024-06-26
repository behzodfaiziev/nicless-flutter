import 'package:flutter/material.dart';

import '../../../product/utils/constants/ui_constants/size_const.dart';

class BaseAppBar extends StatelessWidget implements PreferredSizeWidget {
  const BaseAppBar({
    required this.title,
    this.height = SizeConst.appBarHeight,
    this.automaticallyImplyLeading = true,
    this.centerTitle = true,
    this.actions,
    this.leading,
    this.titleTextStyle,
    this.backgroundColor,
    super.key,
  });

  final String title;
  final double height;
  final bool automaticallyImplyLeading;
  final bool centerTitle;
  final List<Widget>? actions;
  final Widget? leading;
  final TextStyle? titleTextStyle;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: automaticallyImplyLeading,
      leading: leading,
      centerTitle: centerTitle,
      elevation: 0,
      backgroundColor: backgroundColor,
      title: Text(title, style: titleTextStyle),
      actions: actions,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
