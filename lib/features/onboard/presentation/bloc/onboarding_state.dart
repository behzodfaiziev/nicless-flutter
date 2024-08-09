part of 'onboarding_bloc.dart';

abstract class OnboardingState extends Equatable {
  const OnboardingState();

  @override
  List<Object> get props => [];
}

final class OnboardingInitial extends OnboardingState {}

final class OnboardingLoading extends OnboardingState {
  const OnboardingLoading({required this.isLoading});

  final bool isLoading;

  @override
  List<Object> get props => [isLoading];
}

final class OnboardingCompleted extends OnboardingState {}

final class OnNextButtonTriggered extends OnboardingState {
  const OnNextButtonTriggered({
    required this.isEnabled,
    required this.isLastPage,
    required this.index,
  });

  final int index;
  final bool isEnabled;
  final bool isLastPage;

  @override
  List<Object> get props => [index, isEnabled, isLastPage];

  OnNextButtonTriggered copyWith({
    int? index,
    bool? isEnabled,
    bool? isLastPage,
  }) {
    return OnNextButtonTriggered(
      index: index ?? this.index,
      isEnabled: isEnabled ?? this.isEnabled,
      isLastPage: isLastPage ?? this.isLastPage,
    );
  }
}

final class OnSmokingDeviceHasBluetooth extends OnboardingState {
  const OnSmokingDeviceHasBluetooth({required this.hasBluetooth});

  final bool hasBluetooth;

  @override
  List<Object> get props => [hasBluetooth];
}

final class OnSaveVapeDataSuccess extends OnboardingState {
  const OnSaveVapeDataSuccess();

}

final class OnboardingError extends OnboardingState {
  const OnboardingError({required this.message});

  final String message;

  @override
  List<Object> get props => [message];
}