import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/extensions/context_extension.dart';
import '../../../../../../core/widgets/indicator/base_adaptive_cpi.dart';
import '../../../../../../product/navigator/app_router.dart';
import '../../../../../../product/utils/constants/ui_constants/padding_const.dart';
import '../../../../../../product/widgets/text/top_title.dart';
import '../../../../../../product/widgets/tiles/bluetooth_list_tile.dart';
import '../../../../../bluetooth/presentation/bloc/bluetooth_bloc.dart';

class ConnectBluetoothPage extends StatelessWidget {
  const ConnectBluetoothPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Expanded(
          flex: 1,
          child: TopTitle(
            title: 'Connect Your \n Bluetooth Device',
            mainAxisAlignment: MainAxisAlignment.end,
          ),
        ),
        Expanded(
          flex: 3,
          child: Padding(
            padding: PaddingConst.vertical30,
            child: BlocConsumer<BluetoothBloc, BluetoothState>(
              bloc: context.read<BluetoothBloc>(),
              listener: (context, state) {
                if (state is BluetoothDeviceConnected) {
                  context.pushReplaceAll(AutomaticCounterRoute(
                    connection: state.connection,
                    device: state.device,
                  ));
                }
              },
              builder: (context, state) {
                if (state is ConnectingBluetoothDevice) {
                  return const Center(child: BaseAdaptiveCPI());
                }
                if (state is BluetoothDeviceScanResult) {
                  return ListView.builder(
                    shrinkWrap: true,
                    itemCount: state.devices.length,
                    itemBuilder: (context, index) {
                      return BluetoothListTile(
                        title: '${state.devices[index].name}',
                        onPressed: () {
                          context.read<BluetoothBloc>().add(
                              ConnectBluetoothDeviceEvent(
                                  device: state.devices[index]));
                        },
                      );
                    },
                  );
                }
                if (state is BluetoothDeviceFailedToConnect) {
                  return const Center(
                    child: BaseAdaptiveCPI(backgroundColor: Colors.red),
                  );
                }
                return const SizedBox();
              },
            ),
          ),
        ),
      ],
    );
  }
}
