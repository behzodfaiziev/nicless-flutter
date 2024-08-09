import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/extensions/context_extension.dart';
import '../../../../../../core/widgets/toast/custom_toast.dart';
import '../../../../../../product/data_objects/models/smoking/smoking_data_model.dart';
import '../../../../../../product/init/navigator/app_router.dart';
import '../../../../../../product/utils/constants/ui_constants/padding_const.dart';
import '../../../../../bluetooth/presentation/bloc/bluetooth_bloc.dart';
import '../../../bloc/home/home_bloc.dart';
import 'smoking_tile.dart';

class SmokingList extends StatelessWidget {
  const SmokingList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      buildWhen: (previous, current) =>
          current is HomeLoaded ||
          current is HomeError ||
          current is HomeLoading,
      builder: (context, state) {
        if (state is HomeLoading) {
          return const Center(child: CircularProgressIndicator());
        }
        if (state is HomeError) {
          return errorText(state, context);
        }
        if (state is HomeLoaded) {
          return BlocListener<BluetoothBloc, BluetoothState>(
            listenWhen: (previous, current) =>
                current is BluetoothDeviceConnectedState ||
                current is ConnectingBluetoothDeviceState ||
                current is BluetoothDeviceFailedToConnect,
            listener: (context, state) {
              bluetoothStateListener(state, context);
            },
            child: ListView.builder(
              itemCount: state.smokingList.data?.length,
              padding: context.mainHorizontalPadding + AppPadding.top24,
              itemBuilder: (BuildContext context, int index) {
                final device = state.smokingList.data?[index];
                if (device == null) {
                  return const SizedBox();
                }
                return SmokingTile(
                  smokingDevice: device,
                  onPressed: () => onStartButtonPressed(context, device),
                );
              },
            ),
          );
        }
        return const SizedBox();
      },
    );
  }

  Widget errorText(HomeError state, BuildContext context) {
    return Center(
      child: Text(
        state.message,
        style: context.primaryTextTheme.bodyMedium,
      ),
    );
  }

  void bluetoothStateListener(BluetoothState state, BuildContext context) {
    if (state is BluetoothDeviceFailedToConnect) {
      CustomToast.errorToast(context, 'Failed to connect');
    }
    if (state is ConnectingBluetoothDeviceState) {
      CustomToast.infoToast(context, 'Connecting...');
    }

    if (state is BluetoothDeviceConnectedState) {
      context.pushReplaceAll(
        AutomaticCounterRoute(
          smokingId: state.smokingId,
          connection: state.connection,
          device: state.device,
        ),
      );
    }
  }

  void onStartButtonPressed(BuildContext context, SmokingDataModel smoking) {
    if (smoking.smokingDetails?.bluetoothAddress == null ||
        smoking.smokingDetails?.bluetoothAddress == '') {
      context.pushReplaceAll(const CounterRoute());
      return;
    }
    if (smoking.id != null) {
      context.read<BluetoothBloc>().add(
            ConnectBluetoothDeviceEvent(
              device: smoking.smokingDetails!.bluetoothDeviceModel,
              smokingId: smoking.id!,
            ),
          );
    }
  }
}
