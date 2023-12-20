import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../core/extensions/context_extension.dart';
import '../../../product/navigator/app_router.dart';

@RoutePage()
class LandingView extends StatelessWidget {
  const LandingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(left: 32, right: 32),
      child: Column(children: [
        const Spacer(flex: 5),
        const Expanded(
          flex: 3,
          child: TopTitle(
              title: 'Welcome to Nicless',
              subTitle: 'Take control over nicotine'),
        ),
        const Expanded(
          flex: 10,
          child: Placeholder(
            fallbackHeight: 100,
            fallbackWidth: double.infinity,
          ),
        ),
        Expanded(
          flex: 8,
          child: Center(
            child: ElevatedButton(
              onPressed: () {
              context.push(const MainRoute());
              },
              child: const Text('Get Started'),
            ),
          ),
        ),
      ]),
    ));
  }
}

class TopTitle extends StatelessWidget {
  const TopTitle({
    required this.title,
    required this.subTitle,
    super.key,
  });

  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        Text(
          subTitle,
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ],
    );
  }
}
