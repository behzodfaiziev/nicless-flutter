import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../core/widgets/app_bar/base_app_bar.dart';

part 'health_view_mixin.dart';

@RoutePage()
class HealthView extends StatefulWidget {
  const HealthView({super.key});

  @override
  State<HealthView> createState() => _HealthViewState();
}

class _HealthViewState extends State<HealthView> with HealthViewMixin {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(appBar: BaseAppBar(title: 'Health'));
  }
}
