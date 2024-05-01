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
        super(AssistAiInitial()) {
    on<GeminiEvent>((event, emit) {});
    on<SendTextToGeminiEvent>(_sendTextToGeminiHandler);
  }

  final SendTextToGemini _sendTextToGemini;

  Future<void> _sendTextToGeminiHandler(
    SendTextToGeminiEvent event,
    Emitter<GeminiState> emit,
  ) async {
    _sendTextToGemini(event.text).fold(
      (error) => emit(ErrorState(error.message ?? 'An error occurred')),
      (stream) {
        stream.listen(
          (response) {
            emit(SuccessState(response));
          },
          onError: (Object error) {
            emit(ErrorState(error.toString()));
          },
        ).onDone(() {});
        emit(AssistAiInitial());
      },
    );
  }
}
