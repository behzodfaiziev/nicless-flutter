part of 'gemini_bloc.dart';

sealed class GeminiEvent extends Equatable {
  const GeminiEvent();

  @override
  List<Object> get props => [];
}

final class SendTextToGeminiEvent extends GeminiEvent {
  const SendTextToGeminiEvent(this.text);

  final String text;

  @override
  List<Object> get props => [text];
}
