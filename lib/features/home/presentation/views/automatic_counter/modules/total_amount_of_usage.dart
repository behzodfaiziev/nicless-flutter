part of '../automatic_counter_view.dart';

class _TotalAmountOfUsage extends StatelessWidget {
  const _TotalAmountOfUsage({required this.maxSeconds, required this.maxPuffs});

  final int maxSeconds;
  final int maxPuffs;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _ProgressCard(
            title: 'Seconds',
            child: BlocBuilder<AutomaticCounterBloc, AutomaticCounterState>(
              buildWhen: (previous, current) => current is TotalInhaledSeconds,
              builder: (context, state) {
                return _UsageProgress(
                  text: (state is TotalInhaledSeconds ? state.seconds : 0)
                      .toString(),
                  value: state is TotalInhaledSeconds
                      ? 1 - (state.seconds / maxSeconds)
                      : 1,
                );
              },
            ),),
        _ProgressCard(
          title: 'Puffs',
          child: BlocBuilder<AutomaticCounterBloc, AutomaticCounterState>(
            buildWhen: (previous, current) => current is TotalPuffsAdded,
            builder: (context, state) {
              return _UsageProgress(
                text: (state is TotalPuffsAdded ? state.amount : 0).toString(),
                value: state is TotalPuffsAdded
                    ? 1 - (state.amount / maxPuffs)
                    : 1,
              );
            },
          ),
        ),
      ],
    );
  }
}
