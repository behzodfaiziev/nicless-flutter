import 'package:mocktail/mocktail.dart';
import 'package:nicless_flutter/features/auth/domain/repos/auth_repo.dart';
import 'package:nicless_flutter/features/bluetooth/domain/repo/bluetooth_repo.dart';
import 'package:nicless_flutter/features/home/domain/repo/home_repo.dart';
import 'package:nicless_flutter/features/onboard/domain/repo/onboarding_repo.dart';

final class AuthRepoMock extends Mock implements AuthRepo {}

final class BluetoothRepoMock extends Mock implements BluetoothRepo {}

final class HomeRepoMock extends Mock implements HomeRepo {}

final class OnboardingRepoMock extends Mock implements OnboardingRepo {}