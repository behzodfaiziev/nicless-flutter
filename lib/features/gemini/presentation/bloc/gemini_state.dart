part of 'gemini_bloc.dart';

sealed class GeminiState extends Equatable {
  const GeminiState();

  @override
  List<Object> get props => [];
}

final class AssistAiInitial extends GeminiState {}
