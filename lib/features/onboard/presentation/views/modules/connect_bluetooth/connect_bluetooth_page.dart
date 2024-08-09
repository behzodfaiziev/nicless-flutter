import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/widgets/indicator/base_adaptive_cpi.dart';
import '../../../../../../product/data_objects/models/smoking/create_smoking_model.dart';
import '../../../../../../product/data_objects/models/smoking/smoking_details_model.dart';
import '../../../../../../product/utils/constants/app/app_const.dart';
import '../../../../../../product/utils/constants/ui_constants/padding_const.dart';
import '../../../../../../product/widgets/text/top_title.dart';
import '../../../../../../product/widgets/tiles/bluetooth_list_tile.dart';
import '../../../../../../product/widgets/toast/app_toast.dart';
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
              listenWhen: (pr, cr) =>
                  cr is BluetoothDeviceConnectedState ||
                  cr is BluetoothDeviceFailedToConnect,
              bloc: context.read<BluetoothBloc>(),
              listener: pageListener,
              buildWhen: (pr, cr) =>
                  cr is BluetoothDeviceScanResult ||
                  cr is ConnectingBluetoothDeviceState ||
                  cr is BluetoothDeviceFailedToConnect,
              builder: (context, state) {
                if (state is ConnectingBluetoothDeviceState) {
                  return const Center(child: BaseAdaptiveCPI());
                }
                if (state is BluetoothDeviceScanResult) {
                  return bluetoothList(state.devices);
                }
                return const SizedBox();
              },
            ),
          ),
        ),
      ],
    );
  }

  Widget bluetoothList(List<BluetoothDeviceModel> devices) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: devices.length,
      itemBuilder: (context, index) {
        return BluetoothListTile(
          title: '${devices[index].name}',
          onPressed: () {
            context.read<BluetoothBloc>().add(
                  ConnectBluetoothDeviceEvent(
                    device: devices[index],
                    smokingId: '',
                  ),
                );
          },
        );
      },
    );
  }

  void pageListener(BuildContext context, BluetoothState state) {
    if (state is BluetoothDeviceConnectedState) {
      saveVapeDataEvent(context, state.device);
    }
    if (state is BluetoothDeviceFailedToConnect) {
      AppToast.error(
        context: context,
        message: 'Failed to connect to device',
      );
    }
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
    return double.parse(vapeInfoPageParams.vapeTotalPuffLimitController.text);
  }

  double get price {
    return double.parse(vapeInfoPageParams.priceEditingController.text);
  }

  double get nicotinePercentage {
    return double.parse(vapeInfoPageParams.nicotineEditingController.text);
  }
}
