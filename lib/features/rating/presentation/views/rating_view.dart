import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../core/widgets/app_bar/base_app_bar.dart';
import '../../../../core/widgets/buttons/base_svg_button.dart';
import '../../../../product/utils/constants/asset_paths/svg_const.dart';
import '../../../../product/utils/constants/ui_constants/padding_const.dart';

part 'rating_view_mixin.dart';

@RoutePage()
class RatingView extends StatefulWidget {
  const RatingView({super.key});

  @override
  State<RatingView> createState() => _RatingViewState();
}

class _RatingViewState extends State<RatingView>
    with RatingMixin, SingleTickerProviderStateMixin {
  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaseAppBar(
        title: 'Rating',
        actions: [
          Padding(
            padding: PaddingConst.right12,
            child: BaseSVGButton(
              asset: SVGConst.instance.share,
              onPressed: () {},
            ),
          ),
        ],
      ),
      body: const Column(
        
      ),
    );
  }
}
