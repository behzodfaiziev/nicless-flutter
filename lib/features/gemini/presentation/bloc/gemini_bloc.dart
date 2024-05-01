import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'gemini_event.dart';

part 'gemini_state.dart';

class GeminiBloc extends Bloc<GeminiEvent, GeminiState> {
  GeminiBloc() : super(AssistAiInitial()) {
    on<GeminiEvent>((event, emit) {});
  }
}
