part of '../automatic_counter_view.dart';

class _ProgressCard extends StatelessWidget {
  const _ProgressCard({
    required this.child,
    required this.title,
  });

  final Widget child;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: context.colorScheme.primary,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: context.colorScheme.secondary, width: 0.2),
        boxShadow: [
          BoxShadow(
            color: context.colorScheme.secondary,
            blurRadius: 2,
            spreadRadius: 0.1,
          ),
        ],
      ),
      width: context.width * 0.4,
      height: 160,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: PaddingConst.left16 + PaddingConst.top16,
            child: Text(
              title,
              style: context.primaryTextTheme.titleMedium,
            ),
          ),
          Padding(
            padding: PaddingConst.vertical16,
            child: Center(
              child: child,
            ),
          ),
        ],
      ),
    );
  }
}
