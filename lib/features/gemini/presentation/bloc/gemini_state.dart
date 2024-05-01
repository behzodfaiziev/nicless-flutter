part of 'gemini_bloc.dart';

sealed class GeminiState extends Equatable {
  const GeminiState();

  @override
  List<Object> get props => [];
}

final class GeminiInitial extends GeminiState {}

final class ErrorState extends GeminiState {
  const ErrorState(this.message);

  final String message;

  @override
  List<Object> get props => [message];
}

final class TextStreamUpdatedState extends GeminiState {
  const TextStreamUpdatedState({required this.text});

  final String text;

  @override
  List<Object> get props => [text];
}

class NewTextReceivedState extends GeminiState {
  const NewTextReceivedState({
    required this.text,
    required this.history,
  });

  final String text;
  final List<GeminiResultText> history;

  @override
  List<Object> get props => [text, history];
}
