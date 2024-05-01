part of 'assist_ai_bloc.dart';

sealed class AssistAiState extends Equatable {
  const AssistAiState();
}

final class AssistAiInitial extends AssistAiState {
  @override
  List<Object> get props => [];
}
