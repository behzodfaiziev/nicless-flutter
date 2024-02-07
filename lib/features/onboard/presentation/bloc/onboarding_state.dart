part of 'onboarding_bloc.dart';

abstract class OnboardingState extends Equatable {
  const OnboardingState();

  @override
  List<Object> get props => [];
}

class OnboardingInitial extends OnboardingState {}

class OnboardingLoading extends OnboardingState {
  const OnboardingLoading({required this.isLoading});

  final bool isLoading;

  @override
  List<Object> get props => [isLoading];
}

class OnboardingCompleted extends OnboardingState {}

class OnNextButtonTriggered extends OnboardingState {
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

class OnSmokingDeviceHasBluetooth extends OnboardingState {
  const OnSmokingDeviceHasBluetooth({required this.hasBluetooth});

  final bool hasBluetooth;

  @override
  List<Object> get props => [hasBluetooth];
}

class OnSaveVapeDataSuccess extends OnboardingState {
  const OnSaveVapeDataSuccess({required this.vapeDataId});

  final String vapeDataId;

  @override
  List<Object> get props => [vapeDataId];
}
