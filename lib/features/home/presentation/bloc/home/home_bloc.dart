import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../product/models/vape_data_model.dart';
import '../../../domain/use_cases/fetch_devices.dart';

part 'home_event.dart';

part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc({required FetchDevices fetchDevices})
      : _fetchDevices = fetchDevices,
        super(HomeInitial()) {
    on<HomeEvent>((event, emit) {});
    on<FetchDevicesEvent>(_fetchDevicesHandler);
    on<ConnectToDeviceEvent>(_connectToDeviceHandler);
  }

  final FetchDevices _fetchDevices;

  Future<void> _fetchDevicesHandler(
      FetchDevicesEvent event, Emitter<HomeState> emit,) async {
    emit(HomeLoading());

    final result = await _fetchDevices();

    result.fold(
      (failure) => emit(HomeError(failure.message ?? 'Unknown error')),
      (devices) => emit(HomeLoaded(devices)),
    );
  }

  Future<void> _connectToDeviceHandler(
      ConnectToDeviceEvent event, Emitter<HomeState> emit,) async {
    emit(HomeLoading());


  }
}
