part of 'gemini_bloc.dart';

sealed class GeminiState extends Equatable {
  const GeminiState();

  @override
  List<Object> get props => [];
}

final class AssistAiInitial extends GeminiState {}

final class ErrorState extends GeminiState {
  const ErrorState(this.message);

  final String message;

  @override
  List<Object> get props => [message];
}
