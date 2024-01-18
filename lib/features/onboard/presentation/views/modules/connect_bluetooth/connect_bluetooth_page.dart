import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/extensions/context_extension.dart';
import '../../../../../../core/widgets/indicator/base_adaptive_cpi.dart';
import '../../../../../../product/navigator/app_router.dart';
import '../../../../../../product/utils/constants/ui_constants/padding_const.dart';
import '../../../../../../product/widgets/text/top_title.dart';
import '../../../../../../product/widgets/tiles/bluetooth_list_tile.dart';
import '../../../bloc/onboarding_bloc.dart';

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
            child: BlocConsumer<OnboardingBloc, OnboardingState>(
              listener: (context, state) {
                if (state is BluetoothDeviceConnected) {
                  context.pushReplaceAll(const MainRoute());
                }
              },
              bloc: context.read<OnboardingBloc>(),
              builder: (context, state) {
                print('state: $state');
                if (state is OnboardingLoading) {
                  return const Center(child: BaseAdaptiveCPI());
                }
                if (state is BluetoothDevicesFetched) {
                  return ListView.builder(
                    shrinkWrap: true,
                    itemCount: state.devices.length,
                    itemBuilder: (context, index) {
                      return BluetoothListTile(
                        title: '${state.devices[index].name}',
                        onPressed: () {
                               context.read<OnboardingBloc>().add(
                              ConnectToDeviceEvent(
                                  device: state.devices[index]));
                        },
                      );
                    },
                  );
                }

                ///TODO handle error
                return const SizedBox();
              },
            ),
          ),
        ),
      ],
    );
  }
}
