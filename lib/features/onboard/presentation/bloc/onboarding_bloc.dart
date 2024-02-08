import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../../product/models/vape_data_model.dart';
import '../../domain/use_cases/save_vape_data.dart';

part 'onboarding_event.dart';

part 'onboarding_state.dart';

class OnboardingBloc extends Bloc<OnboardingEvent, OnboardingState> {
  OnboardingBloc({required SaveVapeData saveVapeData})
      : _saveVapeData = saveVapeData,
        super(OnboardingInitial()) {
    on<OnboardingEvent>((event, emit) {});
    on<NextButtonPressed>(_onNextButtonPressedHandler);
    on<BackButtonPressed>(_onBackButtonPressedHandler);
    on<SmokingTypeAdded>(_onSmokingTypeAddedHandler);
    on<SmokingTypeRemoved>(_onSmokingTypeRemovedHandler);
    on<SmokingDeviceHasBluetooth>(_onSmokingDeviceHasBluetoothHandler);
    on<SaveVapeDataEvent>(_onSaveVapeDataHandler);
  }

  final SaveVapeData _saveVapeData;

  int _currentIndex = 0;
  final List<int> _smokingTypes = [];

  bool _hasBluetooth = false;
  final bool _isVapeDataEntered = false;

  bool get hasBluetooth => _hasBluetooth;

  bool get isVapeDataEntered => _isVapeDataEntered;

  void _onNextButtonPressedHandler(
      NextButtonPressed event, Emitter<OnboardingState> emit) {
    _currentIndex++;
    emit(OnNextButtonTriggered(
      index: _currentIndex,
      isEnabled: false,
      isLastPage: _currentIndex == 2,
    ));
  }

  void _onBackButtonPressedHandler(
      BackButtonPressed event, Emitter<OnboardingState> emit) {
    _currentIndex--;
    emit(OnNextButtonTriggered(
      index: _currentIndex,
      isEnabled: true,
      isLastPage: false,
    ));
  }

  void _onSmokingTypeAddedHandler(
      SmokingTypeAdded event, Emitter<OnboardingState> emit) {
    _smokingTypes.add(event.smokingType);

    emit(OnNextButtonTriggered(
        isEnabled: true, index: _currentIndex, isLastPage: false));
  }

  void _onSmokingTypeRemovedHandler(
      SmokingTypeRemoved event, Emitter<OnboardingState> emit) {
    _smokingTypes.remove(event.smokingType);

    if (_smokingTypes.isEmpty) {
      emit(OnNextButtonTriggered(
          index: _currentIndex, isEnabled: false, isLastPage: false));
    }
  }

  void _onSmokingDeviceHasBluetoothHandler(
      SmokingDeviceHasBluetooth event, Emitter<OnboardingState> emit) {
    _hasBluetooth = event.hasBluetooth;

    emit(OnSmokingDeviceHasBluetooth(hasBluetooth: _hasBluetooth));
    emit(OnNextButtonTriggered(
        index: _currentIndex,
        isEnabled: _isVapeDataEntered || _hasBluetooth ? true : false,
        isLastPage: _hasBluetooth ? false : true));
  }

  Future<void> _onSaveVapeDataHandler(
      SaveVapeDataEvent event, Emitter<OnboardingState> emit) async {
    final result = await _saveVapeData(event.vapeData);

    result.fold(
      (error) {
        // emit(OnSaveVapeDataError(errorMessage: error.message));
      },
      (vapeId) {
        emit(OnSaveVapeDataSuccess(vapeDataId: vapeId));
      },
    );
  }
}
