import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/use_cases/send_text_to_gemini.dart';

part 'gemini_event.dart';

part 'gemini_state.dart';

class GeminiBloc extends Bloc<GeminiEvent, GeminiState> {
  GeminiBloc({
    required SendTextToGemini sendTextToGemini,
  })  : _sendTextToGemini = sendTextToGemini,
        super(GeminiInitial()) {
    on<GeminiEvent>((event, emit) {});
    on<SendTextToGeminiEvent>(_sendTextToGeminiHandler);
  }

  final SendTextToGemini _sendTextToGemini;
  final List<GeminiResultText> _chatHistory = [];
  late StreamSubscription<String> _streamSubscription;

  int _currentResponseCount = 0;

  Future<void> _sendTextToGeminiHandler(
    SendTextToGeminiEvent event,
    Emitter<GeminiState> emit,
  ) async {
    final completer = Completer<void>();
    final List<String> partialTexts = [];

    _chatHistory.add(GeminiResultText(text: event.text, isQuestion: true));
    _currentResponseCount++;

    emit(NewTextReceivedState(text: event.text, history: _chatHistory));

    _sendTextToGemini(event.text).fold(
      (error) => emit(ErrorState(error.message ?? 'An error occurred')),
      (stream) {
        _streamSubscription = stream.listen(
          (response) {
            partialTexts.add(response);

            if (_currentResponseCount < _chatHistory.length) {
              _chatHistory[_currentResponseCount] =
                  GeminiResultText(text: partialTexts.join(' '));
            } else {
              _chatHistory.add(GeminiResultText(text: partialTexts.join(' ')));
            }

            emit(
              NewTextReceivedState(
                text: partialTexts.join(' '),
                history: _chatHistory,
              ),
            );
          },
          onError: (Object error) {
            _currentResponseCount++;
            emit(ErrorState(error.toString()));
          },
          onDone: () {
            _currentResponseCount++;
            _streamSubscription.cancel();
            completer.complete();
          },
        );
      },
    );

    return completer.future;
  }
}

class GeminiResultText {
  const GeminiResultText({required this.text, this.isQuestion = false});

  final String text;
  final bool isQuestion;
}
