part of 'onboarding_bloc.dart';

abstract class OnboardingEvent extends Equatable {
  const OnboardingEvent();

  @override
  List<Object> get props => [];
}

class NextButtonPressed extends OnboardingEvent {
  const NextButtonPressed();
}

class SmokingTypeAdded extends OnboardingEvent {
  const SmokingTypeAdded({required this.smokingType});

  final int smokingType;

  @override
  List<Object> get props => [smokingType];
}

class SmokingTypeRemoved extends OnboardingEvent {
  const SmokingTypeRemoved({required this.smokingType});

  final int smokingType;

  @override
  List<Object> get props => [smokingType];
}
