part of 'onboarding_bloc.dart';

abstract class OnboardingEvent extends Equatable {
  const OnboardingEvent();

  @override
  List<Object> get props => [];
}

class GetBluetoothDevicesEvent extends OnboardingEvent {}

class ConnectToDeviceEvent extends OnboardingEvent {
  final BluetoothDevice device;

  const ConnectToDeviceEvent({required this.device});

  @override
  List<Object> get props => [device];
}