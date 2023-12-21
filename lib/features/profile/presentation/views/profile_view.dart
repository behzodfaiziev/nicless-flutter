import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../core/extensions/context_extension.dart';
import '../../../../product/utils/constants/app/app_const.dart';
import '../../../../product/utils/constants/ui_constants/padding_const.dart';

@RoutePage()
class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: PaddingConst.top24,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: context.mainHorizontalPaddingLeft,
                    width: 30,
                  ),
                  Padding(
                    padding: PaddingConst.top12,
                    child: CircleAvatar(
                      radius: context.width * 0.2,
                      backgroundImage:
                          const NetworkImage(AppConst.tempProfileUrl),
                    ),
                  ),
                  Container(
                      width: 30,
                      margin: context.mainHorizontalPaddingRight,
                      child: IconButton(
                        onPressed: () {
                          // context.push(const SettingsRoute());
                        },
                        icon: const Icon(Icons.settings),
                        color: Colors.white,
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
