import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/assist_ai_bloc.dart';

part 'assist_ai_mixin.dart';

@RoutePage()
class AssistAIView extends StatefulWidget {
  const AssistAIView({super.key});

  @override
  State<AssistAIView> createState() => _AssistAIViewState();
}

class _AssistAIViewState extends State<AssistAIView> with AssistAIMixin {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _assistAiBloc,
      child: const Scaffold(),
    );
  }
}
