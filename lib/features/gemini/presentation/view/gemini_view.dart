import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/gemini_bloc.dart';

part 'gemini_mixin.dart';

@RoutePage()
class GeminiView extends StatefulWidget {
  const GeminiView({super.key});

  @override
  State<GeminiView> createState() => _GeminiViewState();
}

class _GeminiViewState extends State<GeminiView> with GeminiMixin {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _geminiBloc,
      child: const Scaffold(),
    );
  }
}
