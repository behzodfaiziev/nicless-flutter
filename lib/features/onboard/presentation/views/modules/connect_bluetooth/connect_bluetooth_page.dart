import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/widgets/indicator/base_adaptive_cpi.dart';
import '../../../../../../product/data_objects/models/smoking/create_smoking_model.dart';
import '../../../../../../product/data_objects/models/smoking/smoking_details_model.dart';
import '../../../../../../product/utils/constants/app/app_const.dart';
import '../../../../../../product/utils/constants/ui_constants/padding_const.dart';
import '../../../../../../product/widgets/text/top_title.dart';
import '../../../../../../product/widgets/tiles/bluetooth_list_tile.dart';
import '../../../../../bluetooth/data/models/bluetooth_device_model.dart';
import '../../../../../bluetooth/presentation/bloc/bluetooth_bloc.dart';
import '../../../bloc/onboarding_bloc.dart';
import '../smoking_info/smoking_info_page.dart';

class ConnectBluetoothPage extends StatelessWidget {
  const ConnectBluetoothPage({required this.vapeInfoPageParams, super.key});

  final SmokingInfoPageParams vapeInfoPageParams;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Expanded(
          child: TopTitle(
            title: 'Connect Your \n Bluetooth Device',
            mainAxisAlignment: MainAxisAlignment.end,
          ),
        ),
        Expanded(
          flex: 3,
          child: Padding(
            padding: AppPadding.vertical30,
            child: BlocConsumer<BluetoothBloc, BluetoothState>(
              buildWhen: (pr, cr) =>
                  cr is BluetoothDeviceScanResult ||
                  cr is ConnectingBluetoothDevice ||
                  cr is BluetoothDeviceFailedToConnect,
              listenWhen: (pr, cr) => cr is BluetoothDeviceConnected,
              bloc: context.read<BluetoothBloc>(),
              listener: (context, state) {
                if (state is BluetoothDeviceConnected) {
                  saveVapeDataEvent(context, state.device);
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
                                  device: state.devices[index],
                                ),
                              );
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

  void saveVapeDataEvent(BuildContext context, BluetoothDeviceModel device) {
    context.read<OnboardingBloc>().add(
          SaveSmokingDataEvent(
            smoking: CreateSmokingModel(
              smokingType: AppConst.vape,
              name: vapeInfoPageParams.vapeNameEditingController.text.trim(),
              priceInUSDollars: price,
              smoking: SmokingDetailsModel(
                deviceName: device.name,
                bluetoothAddress: device.address,
                nicotinePercentage: nicotinePercentage,
                vapeTotalPuffLimit: vapeTotalPuffLimit,
              ),
            ),
          ),
        );
  }

  double get vapeTotalPuffLimit {
    return double.parse(vapeInfoPageParams.capacityEditingController.text);
  }

  double get price {
    return double.parse(vapeInfoPageParams.priceEditingController.text);
  }

  double get nicotinePercentage {
    return double.parse(vapeInfoPageParams.nicotineEditingController.text);
  }
}
