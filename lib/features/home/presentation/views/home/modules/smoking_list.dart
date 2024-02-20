import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/extensions/context_extension.dart';
import '../../../../../../core/widgets/toast/custom_toast.dart';
import '../../../../../../product/init/navigator/app_router.dart';
import '../../../../../../product/models/vape_data_model.dart';
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
          return Center(child: Text(state.message));
        }
        if (state is HomeLoaded) {
          return BlocListener<BluetoothBloc, BluetoothState>(
            listenWhen: (previous, current) =>
                current is BluetoothDeviceConnected ||
                current is ConnectingBluetoothDevice ||
                current is BluetoothDeviceFailedToConnect,
            listener: (context, state) {
              bluetoothStateListener(state, context);
            },
            child: ListView.builder(
              itemCount: state.devices.length,
              padding: context.mainHorizontalPadding + PaddingConst.top24,
              itemBuilder: (BuildContext context, int index) {
                final device = state.devices[index];
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

  void bluetoothStateListener(BluetoothState state, BuildContext context) {
    if (state is BluetoothDeviceFailedToConnect) {
      CustomToast.errorToast(context, 'Failed to connect');
    }
    if (state is ConnectingBluetoothDevice) {
      CustomToast.infoToast(context, 'Connecting...');
    }
    
    if (state is BluetoothDeviceConnected) {
      context.pushReplaceAll(AutomaticCounterRoute(
          connection: state.connection, device: state.device));
    }
  }

  void onStartButtonPressed(BuildContext context, VapeDataModel smokingDevice) {
    if (smokingDevice.bluetoothData == null) {
      context.pushReplaceAll(const CounterRoute());
      return;
    }
    context
        .read<BluetoothBloc>()
        .add(ConnectBluetoothDeviceEvent(device: smokingDevice.bluetoothData!));
  }
}
