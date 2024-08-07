import 'package:flutter/material.dart';

import '../../../product/theme/app_colors.dart';
import '../../extensions/context_extension.dart';

class BaseAnimatedSnackBar extends StatefulWidget {
  const BaseAnimatedSnackBar({
    required this.message,
    required this.isSuccess,
    required this.closeAfterSeconds,
    super.key,
  });

  final String message;
  final bool isSuccess;
  final int closeAfterSeconds;

  @override
  BaseAnimatedSnackBarState createState() => BaseAnimatedSnackBarState();
}

class BaseAnimatedSnackBarState extends State<BaseAnimatedSnackBar>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _fadeAnimation;
  bool isDisposed = false;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    )..forward();

    _fadeAnimation = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.ease));

    Future.delayed(Duration(seconds: widget.closeAfterSeconds), () {
      if (isDisposed == false) {
        _controller.reverse();
      }
    });
  }

  @override
  void dispose() {
    isDisposed = true;
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _fadeAnimation,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Material(
          color: widget.isSuccess
              ? context.colorScheme.primary
              : context.colorScheme.error,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: Text(
              widget.message,
              style: const TextStyle(color: AppColors.white),
            ),
          ),
        ),
      ),
    );
  }
}
