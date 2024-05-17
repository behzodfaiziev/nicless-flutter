import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../product/data_objects/models/vape_data_model.dart';
import '../../../domain/use_cases/fetch_devices.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc({required FetchDevices fetchDevices})
      : _fetchDevices = fetchDevices,
        super(const HomeInitial()) {
    on<HomeEvent>((event, emit) {});
    on<FetchDevicesEvent>(_fetchDevicesHandler);
  }

  final FetchDevices _fetchDevices;

  Future<void> _fetchDevicesHandler(
    FetchDevicesEvent event,
    Emitter<HomeState> emit,
  ) async {
    emit(const HomeLoading());

    final result = await _fetchDevices();

    result.fold(
      (failure) => emit(HomeError(failure.message ?? 'Unknown error')),
      (devices) => emit(HomeLoaded(devices)),
    );
  }
}
