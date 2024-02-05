import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'onboarding_event.dart';

part 'onboarding_state.dart';

class OnboardingBloc extends Bloc<OnboardingEvent, OnboardingState> {
  OnboardingBloc() : super(OnboardingInitial()) {
    on<OnboardingEvent>((event, emit) {});
    on<NextButtonPressed>(_onNextButtonPressedHandler);
    on<SmokingTypeAdded>(_onSmokingTypeAddedHandler);
    on<SmokingTypeRemoved>(_onSmokingTypeRemovedHandler);
  }

  int _currentIndex = 0;
  final List<int> _smokingTypes = [];

  void _onNextButtonPressedHandler(
      NextButtonPressed event, Emitter<OnboardingState> emit) {
    _currentIndex++;
    emit(OnNextButtonTriggered(
      index: _currentIndex,
      isEnabled: false,
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
}
