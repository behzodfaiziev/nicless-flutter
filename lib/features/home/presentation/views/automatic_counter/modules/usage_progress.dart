part of '../automatic_counter_view.dart';

class _UsageProgress extends StatelessWidget {
  const _UsageProgress({
    required this.value,
    required this.text,
  });

  final double value;
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      width: 70,
      child: Stack(
        children: [
          Positioned.fill(
            child: CircularProgressIndicator(
              color: context.colorScheme.secondary,
              backgroundColor: context.colorScheme.error,
              value: value,
            ),
          ),
          Center(
            child: Text(
              text,
              style: context.primaryTextTheme.headlineSmall,
            ),
          )
        ],
      ),
    );
  }
}
