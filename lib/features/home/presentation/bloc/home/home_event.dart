part of 'home_bloc.dart';

abstract class HomeEvent extends Equatable {
  const HomeEvent();

  @override
  List<Object> get props => [];
}

class FetchDevicesEvent extends HomeEvent {}

class ConnectToDeviceEvent extends HomeEvent {
  const ConnectToDeviceEvent(this.device);

  final VapeDataModel device;

  @override
  List<Object> get props => [device];
}
