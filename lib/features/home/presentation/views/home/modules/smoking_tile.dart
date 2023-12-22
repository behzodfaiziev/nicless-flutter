import 'package:flutter/material.dart';

import '../../../../../../core/extensions/context_extension.dart';
import '../../../../../../core/widgets/buttons/base_outlined_text_button.dart';
import '../../../../../../core/widgets/image/base_asset_image.dart';
import '../../../../../../product/navigator/app_router.dart';
import '../../../../../../product/utils/constants/ui_constants/padding_const.dart';
import '../../../../../../product/utils/constants/ui_constants/radius_const.dart';
import '../../../../../../product/utils/constants/ui_constants/size_const.dart';
import '../../../../../../product/utils/converter.dart';
import '../../../../domain/entities/smoking_entity.dart';

class SmokingTile extends StatelessWidget {
  const SmokingTile({
    required this.smoking,
    super.key,
  });

  final SmokingEntity smoking;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: PaddingConst.bottom24,
      child: ClipRRect(
        borderRadius: RadiusConst.largeRadius,
        // child: Material(
        //   color: context.colorScheme.primary,
        //   child: InkWell(
        //     splashColor: Colors.white.withOpacity(0.1),
        //     onTap: () {
        //       context.pushReplaceAll(const CounterRoute());
        // },
        child: Container(
          width: double.infinity,
          height: SizeConst.smokingTileHeight,
          color: context.colorScheme.primary,
          child: Padding(
            padding: PaddingConst.horizontal8 + PaddingConst.vertical16,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                    flex: 4,
                    child: BaseAssetImage(
                      smoking.image,
                      fit: BoxFit.fitHeight,
                      width: double.infinity,
                      height: double.infinity,
                    )),
                Expanded(
                  flex: 10,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(smoking.name,
                          style: context.textTheme.titleMedium?.copyWith(
                            color: Colors.white,
                            height: 1,
                            fontWeight: FontWeight.w600,
                          )),
                      KeyValueText(
                        keyText: 'Capacity: ',
                        valueText: CustomConverter.capacity(smoking.capacity),
                      ),
                      KeyValueText(
                        keyText: 'Nicotine: ',
                        valueText: '${smoking.nicotineValue}%',
                      ),
                      Container(
                          height: 8,
                          margin: PaddingConst.top4,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: RadiusConst.largeRadius,
                            color: Colors.white,
                          ))
                    ],
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: RadiusConst.bigRadius,
                          color: Colors.white,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text('320',
                                style: context.textTheme.bodySmall?.copyWith(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                )),
                            Text('left',
                                style: context.textTheme.bodySmall?.copyWith()),
                          ],
                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          BaseOutlinedTextButton(
                            onPressed: () {
                              context.pushReplaceAll(const CounterRoute());
                            },
                            text: 'Start',
                            fontColor: Colors.white,
                          ),
                          GestureDetector(
                              onTap: () {
                                context.pushReplaceAll(const CounterRoute());
                              },
                              child: const Icon(Icons.chevron_right,
                                  color: Colors.white)),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      // ),
      // ),
    );
  }
}

class KeyValueText extends StatelessWidget {
  const KeyValueText({
    required this.keyText,
    required this.valueText,
    super.key,
  });

  final String keyText;
  final String valueText;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          keyText,
          style: context.textTheme.bodySmall?.copyWith(
            color: Colors.white,
          ),
        ),
        Text(
          valueText,
          style: context.textTheme.bodySmall?.copyWith(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
