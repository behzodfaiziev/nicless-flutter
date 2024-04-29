import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/widgets/indicator/base_adaptive_cpi.dart';
import '../../../bloc/rating_bloc.dart';
import '../rating_list_view.dart';

class YearlyRatingTab extends StatelessWidget {
  const YearlyRatingTab({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RatingBloc, RatingState>(
      buildWhen: (pr, cr) => cr is YearlyRatingLoadedState,
      builder: (context, state) {
        if (state is YearlyRatingLoadedState) {
          return RatingListView(data: state.data);
        }
        return const Center(child: BaseAdaptiveCPI());
      },
    );
  }
}
