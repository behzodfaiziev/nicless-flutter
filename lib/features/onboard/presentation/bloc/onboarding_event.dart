part of 'onboarding_bloc.dart';

abstract class OnboardingEvent extends Equatable {
  const OnboardingEvent();

  @override
  List<Object> get props => [];
}

class NextButtonPressed extends OnboardingEvent {
  const NextButtonPressed();
}

class BackButtonPressed extends OnboardingEvent {
  const BackButtonPressed();
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

class SmokingDeviceHasBluetooth extends OnboardingEvent {
  const SmokingDeviceHasBluetooth({required this.hasBluetooth});

  final bool hasBluetooth;
}

class SaveVapeDataEvent extends OnboardingEvent {
  const SaveVapeDataEvent({
    required this.vapeData,
    required this.smokingInfoPageParams,
  });

  final BluetoothDeviceModel vapeData;
  final SmokingInfoPageParams smokingInfoPageParams;
}
