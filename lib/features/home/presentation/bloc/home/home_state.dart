part of 'home_bloc.dart';

abstract class HomeState extends Equatable {
  const HomeState();

  @override
  List<Object> get props => [];
}

class HomeInitial extends HomeState {
  const HomeInitial();
}

class HomeLoading extends HomeState {
  const HomeLoading();
}

class HomeError extends HomeState {
  const HomeError(this.message);

  final String message;

  @override
  List<Object> get props => [message];
}

class HomeLoaded extends HomeState {
  const HomeLoaded(this.devices);

  final List<VapeDataModel> devices;

  @override
  List<Object> get props => [devices];
}
