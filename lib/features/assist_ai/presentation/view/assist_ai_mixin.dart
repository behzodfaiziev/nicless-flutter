part of 'assist_ai_view.dart';

mixin AssistAIMixin on State<AssistAIView> {
  late final AssistAiBloc _assistAiBloc;

  @override
  void initState() {
    _assistAiBloc = context.read<AssistAiBloc>();
    super.initState();
  }
}
