part of 'onboarding_bloc.dart';

abstract class OnboardingState extends Equatable {
  const OnboardingState();

  @override
  List<Object> get props => [];
}

class OnboardingInitial extends OnboardingState {}

class OnboardingLoading extends OnboardingState {}

class OnboardingCompleted extends OnboardingState {}

class BluetoothDevicesFetched extends OnboardingState {
  const BluetoothDevicesFetched({required this.devices});

  final List<BluetoothDevice> devices;
}

class BluetoothDeviceConnected extends OnboardingState {
  const BluetoothDeviceConnected();
}
