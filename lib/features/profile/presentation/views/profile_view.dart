import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../core/extensions/context_extension.dart';
import '../../../../core/widgets/buttons/base_svg_button.dart';
import '../../../../product/utils/constants/app/app_const.dart';
import '../../../../product/utils/constants/asset_paths/svg_const.dart';
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
            buildTopAvatar(context),
            Padding(
              padding: PaddingConst.vertical24,
              child: Column(
                children: [
                  Text(
                    AppConst.tempProfileName,
                    style: context.textTheme.displaySmall,
                  ),
                  Text(
                    AppConst.tempProfileNickname,
                    style: context.textTheme.titleMedium,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget buildTopAvatar(BuildContext context) {
    return Padding(
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
              backgroundImage: const NetworkImage(AppConst.tempProfileUrl),
            ),
          ),
          Container(
            width: 30,
            margin: context.mainHorizontalPaddingRight,
            child: BaseSVGButton(
              asset: SVGConst.instance.settings,
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
