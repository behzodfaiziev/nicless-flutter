import 'package:auto_route/auto_route.dart';
import 'package:calendar_view/calendar_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/extensions/context_extension.dart';
import '../../../../core/widgets/toast/custom_toast.dart';
import '../../../../product/init/injection_container/_injection_container.dart';
import '../../../../product/init/navigator/app_router.dart';
import '../../../bluetooth/presentation/bloc/bluetooth_bloc.dart';
import '../bloc/onboarding_bloc.dart';

part 'onboarding_view_mixin.dart';

@RoutePage()
class OnboardingView extends StatefulWidget {
  const OnboardingView({this.isUserCreated = false, super.key});

  final bool isUserCreated;

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView>
    with OnboardingViewMixin {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<OnboardingBloc>(),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green[100],
          title: const Text(
            'Daily View',
            style: TextStyle(color: Colors.black),
          ),
        ),
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Expanded(
                flex: 6,
                child: DayView(
                  onEventTap:
                      (List<CalendarEventData<Object?>> event, DateTime g) {
                    CustomToast.successToast(context, 'Event tapped');
                  },
                )),
            Expanded(
                child: Column(
              children: [
                ElevatedButton(
                  child: const Text('Next'),
                  onPressed: () {},
                ),
              ],
            )),
          ],
        ),
      ),
    );
  }
}
