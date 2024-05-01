part of 'gemini_view.dart';

mixin GeminiMixin on State<GeminiView> {
  late final GeminiBloc _geminiBloc;

  @override
  void initState() {
    _geminiBloc = context.read<GeminiBloc>();
    super.initState();
  }
}
