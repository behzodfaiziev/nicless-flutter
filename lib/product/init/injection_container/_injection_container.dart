import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';

import '../../../core/managers/database/core/primitive_database.dart';
import '../../../core/managers/database/secure_storage/secure_database_manager.dart';
import '../../../core/managers/network/i_network_manager.dart';
import '../../../core/managers/network/models/error_model_custom.dart';
import '../../../core/managers/network/network_manager.dart';
import '../../../features/auth/data/data_sources/auth_local_data_source.dart';
import '../../../features/auth/data/data_sources/auth_local_data_source_impl.dart';
import '../../../features/auth/data/data_sources/auth_remote_data_source.dart';
import '../../../features/auth/data/data_sources/auth_remote_data_source_impl.dart';
import '../../../features/auth/data/repos/auth_repo_impl.dart';
import '../../../features/auth/domain/repos/auth_repo.dart';
import '../../../features/auth/domain/use_cases/anonymous_sign_in.dart';
import '../../../features/auth/domain/use_cases/check_is_authenticated.dart';
import '../../../features/auth/domain/use_cases/sign_out.dart';
import '../../../features/auth/presentation/bloc/auth_bloc.dart';
import '../../../features/bluetooth/data/repo/bluetooth_repo_impl.dart';
import '../../../features/bluetooth/domain/repo/bluetooth_repo.dart';
import '../../../features/bluetooth/domain/use_cases/connect_bluetooth_device.dart';
import '../../../features/bluetooth/domain/use_cases/get_bluetooth_devices.dart';
import '../../../features/bluetooth/presentation/bloc/bluetooth_bloc.dart';
import '../../../features/onboard/data/repo/onboarding_repo_impl.dart';
import '../../../features/onboard/domain/repo/onboarding_repo.dart';
import '../../../features/onboard/presentation/bloc/onboarding_bloc.dart';

part '_injection_container_main.dart';

part 'auth_container.dart';

part 'bluetooth_container.dart';

part 'onboarding_container.dart';

part 'settings_container.dart';
