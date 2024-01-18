import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';

import '../../../core/managers/database/core/primitive_database.dart';
import '../../../core/managers/database/secure_storage/secure_database_manager.dart';
import '../../../features/onboard/data/repo/onboarding_repo_impl.dart';
import '../../../features/onboard/domain/repo/onboarding_repo.dart';
import '../../../features/onboard/domain/use_cases/connect_bluetooth_device.dart';
import '../../../features/onboard/domain/use_cases/get_bluetooth_devices.dart';
import '../../../features/onboard/presentation/bloc/onboarding_bloc.dart';

part '_injection_container_main.dart';
part 'auth_container.dart';
part 'onboarding_container.dart';
part 'settings_container.dart';
