import 'package:flutter/material.dart';

import '../../../../../core/extensions/context_extension.dart';
import '../../../../../product/theme/app_colors.dart';
import '../../../../../product/utils/constants/asset_paths/images_const.dart';
import '../../../../../product/utils/constants/ui_constants/padding_const.dart';
import '../../../../../product/utils/constants/ui_constants/radius_const.dart';
import '../../../../../product/utils/constants/ui_constants/size_const.dart';
import '../../../data/models/rating_model.dart';

class RatingListTile extends StatelessWidget {
  const RatingListTile({required this.rating, super.key});

  final RatingModel rating;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: PaddingConst.top20 + PaddingConst.horizontal20,
      height: isTopThree
          ? SizeConst.rankingTileTopHeight
          : SizeConst.rankingTileHeight,
      decoration: BoxDecoration(
        borderRadius: RadiusConst.largeRadius,
        color: isTopThree
            ? AppColors.cardTopRatingColor
            : AppColors.cardRatingColor,
      ),
      child: Row(
        children: [leftContainer(context), rightContainer(context)],
      ),
    );
  }

  Widget rightContainer(BuildContext context) {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: PaddingConst.left20,
            child: Text(
              rating.name ?? '',
              style: context.primaryTextTheme.displaySmall,
            ),
          ),
          Row(
            children: [
              Text(
                rating.averageCO2.toString(),
                style: context.primaryTextTheme.titleMedium,
              ),
              Padding(
                padding: PaddingConst.left2 + PaddingConst.right16,
                child: Text(
                  'gr/p',
                  style: context.primaryTextTheme.labelMedium?.copyWith(
                    color: AppColors.greyDarkHeadLineMedium,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Container leftContainer(BuildContext context) {
    return Container(
      width: 64,
      decoration: BoxDecoration(
        borderRadius:
            RadiusConstEnum.high.topLeft + RadiusConstEnum.high.bottomLeft,
        color: AppColors.iconColor,
      ),
      child: Center(
        child: isTopThree
            ? Padding(
                padding: PaddingConst.all16,
                child: Image.asset(topThreeRatingAsset),
              )
            : Text(
                rating.rank.toString(),
                style: context.textTheme.titleLarge?.copyWith(
                  color: AppColors.white,
                ),
              ),
      ),
    );
  }

  bool get isTopThree {
    return rating.rank == 1 || rating.rank == 2 || rating.rank == 3;
  }

  String get topThreeRatingAsset {
    switch (rating.rank) {
      case 1:
        return ImagesConst.instance.ratingFirst;
      case 2:
        return ImagesConst.instance.ratingSecond;
      case 3:
        return ImagesConst.instance.ratingThird;
      default:
        return '';
    }
  }
}
