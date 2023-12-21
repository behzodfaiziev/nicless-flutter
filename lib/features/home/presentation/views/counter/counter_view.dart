import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

part 'counter_view_mixin.dart';

@RoutePage()
class CounterView extends StatefulWidget {
  const CounterView({super.key});

  @override
  State<CounterView> createState() => _CounterViewState();
}

class _CounterViewState extends State<CounterView> with CounterViewMixin {
  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
