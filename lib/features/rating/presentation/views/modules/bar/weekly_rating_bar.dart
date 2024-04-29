import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/widgets/indicator/base_adaptive_cpi.dart';
import '../../../bloc/rating_bloc.dart';
import '../rating_list_view.dart';

class WeeklyRatingBar extends StatelessWidget {
  const WeeklyRatingBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RatingBloc, RatingState>(
      buildWhen: (pr, cr) => cr is WeeklyRatingLoadedState,
      builder: (context, state) {
        if (state is WeeklyRatingLoadedState) {
          return RatingListView(data: state.data);
        }
        return const Center(child: BaseAdaptiveCPI());
      },
    );
  }
}
