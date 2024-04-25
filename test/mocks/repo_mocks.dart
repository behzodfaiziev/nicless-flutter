import 'package:mocktail/mocktail.dart';
import 'package:nicless_flutter/features/auth/domain/repos/auth_repo.dart';
import 'package:nicless_flutter/features/bluetooth/domain/repo/bluetooth_repo.dart';
import 'package:nicless_flutter/features/home/domain/repo/home_repo.dart';

class AuthRepoMock extends Mock implements AuthRepo {}

class BluetoothRepoMock extends Mock implements BluetoothRepo {}

class HomeRepoMock extends Mock implements HomeRepo {}
