import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class BaseShimmer extends StatelessWidget {
  const BaseShimmer({
    required this.child,
    required this.baseColor,
    required this.highlightColor,
    this.isEnabled = true,
    this.direction = ShimmerDirection.ltr,
    this.period = const Duration(milliseconds: 1500),
    this.loop = 0,
    super.key,
  });

  final Widget child;
  final Color baseColor;
  final Color highlightColor;
  final bool isEnabled;
  final ShimmerDirection direction;
  final int loop;
  final Duration period;

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: baseColor,
      highlightColor: highlightColor,
      enabled: isEnabled,
      direction: direction,
      loop: loop,
      period: period,
      child: child,
    );
  }
}
