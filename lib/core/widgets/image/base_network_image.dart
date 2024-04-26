import 'package:flutter/material.dart';

import '../../../product/utils/constants/ui_constants/padding_const.dart';

typedef ImageErrorWidgetBuilder = Widget Function(
    BuildContext context, Object error, StackTrace? stackTrace,);

class BaseNetworkImage extends StatelessWidget {
  const BaseNetworkImage(
    this.url, {
    this.fit,
    this.clipRadius = 0,
    this.height,
    this.width,
    this.errorBuilder,
    this.errorPadding,
    this.errorImage,
    this.loadingImage,
    this.backgroundColor,
    super.key,
  });

  final String? url;
  final BoxFit? fit;
  final double? height;
  final double? width;
  final EdgeInsets? errorPadding;
  final String? errorImage;
  final String? loadingImage;
  final Color? backgroundColor;
  final ImageErrorWidgetBuilder? errorBuilder;
  final double clipRadius;

  @override
  Widget build(BuildContext context) {
    return url == '' || url == null
        ? buildPlaceHolderImage()
        : ClipRRect(
            borderRadius: BorderRadius.circular(clipRadius),
            child: Image.network(
              url!,
              fit: fit,
              height: height,
              width: width,
              errorBuilder: errorBuilder ??
                  (ctx, err, stackTrace) {
                    return buildPlaceHolderImage();
                  },
            ),
          );
  }

  Padding buildPlaceHolderImage() {
    return Padding(
      padding: errorPadding ?? PaddingConst.all8,
      child: const SizedBox(),
      // child: Image.asset(errorImage ?? AssetImage.instance.errorImage),
    );
  }
}
