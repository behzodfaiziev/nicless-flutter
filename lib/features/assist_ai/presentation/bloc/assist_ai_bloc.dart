import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'assist_ai_event.dart';

part 'assist_ai_state.dart';

class AssistAiBloc extends Bloc<AssistAiEvent, AssistAiState> {
  AssistAiBloc() : super(AssistAiInitial()) {
    on<AssistAiEvent>((event, emit) {});
  }
}
