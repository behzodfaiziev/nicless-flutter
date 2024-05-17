import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:nicless_flutter/core/error/failures/api_failure.dart';
import 'package:nicless_flutter/features/home/domain/use_cases/fetch_devices.dart';
import 'package:nicless_flutter/features/home/presentation/bloc/home/home_bloc.dart';

final class FetchDevicesMock extends Mock implements FetchDevices {}

void main() {
  late HomeBloc bloc;
  late FetchDevices fetchDevices;

  setUpAll(() {
    fetchDevices = FetchDevicesMock();
    bloc = HomeBloc(fetchDevices: fetchDevices);
  });
  tearDownAll(() => bloc.close());

  test('initial state is HomeInitial', () {
    expect(bloc.state, const HomeInitial());
  });

  group('FetchDevicesEvent', () {
    blocTest<HomeBloc, HomeState>(
      'emits [HomeLoading, HomeLoaded] when FetchDevicesEvent is added',
      build: () {
        when(() => fetchDevices()).thenAnswer((_) async => const Right([]));
        return bloc;
      },
      act: (bloc) => bloc.add(const FetchDevicesEvent()),
      expect: () => const <HomeState>[
        HomeLoading(),
        HomeLoaded([]),
      ],
    );

    blocTest<HomeBloc, HomeState>(
      'emits [HomeLoading, HomeError] '
      'when FetchDevicesEvent is added and fails',
      build: () {
        when(() => fetchDevices()).thenAnswer(
          (_) async =>
              const Left(APIFailure(message: 'Error', statusCode: 500)),
        );
        return bloc;
      },
      act: (bloc) => bloc.add(const FetchDevicesEvent()),
      expect: () => const <HomeState>[
        HomeLoading(),
        HomeError('Error'),
      ],
    );
  });
}
