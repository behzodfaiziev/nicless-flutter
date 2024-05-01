part of 'gemini_view.dart';

mixin GeminiMixin on State<GeminiView> {
  late final GeminiBloc _geminiBloc;
  final ScrollController _scrollController = ScrollController();
  final TextEditingController _textEditingController = TextEditingController();

  @override
  void initState() {
    _geminiBloc = context.read<GeminiBloc>();
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _textEditingController.dispose();
    super.dispose();
  }

  void onSendButtonPressed() {
    _geminiBloc.add(SendTextToGeminiEvent(_textEditingController.text));
    _textEditingController.clear();
  }

  void pageListener(BuildContext context, GeminiState state) {
    if (state is NewTextReceivedState) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        _scrollController.animateTo(
          _scrollController.position.maxScrollExtent,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOut,
        );
      });
    }
  }
}
