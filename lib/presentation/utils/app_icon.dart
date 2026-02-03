import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

class AppIcon extends StatelessWidget {
  const AppIcon(this.assetName, {super.key, this.size, this.color, this.fit});
  final String assetName;
  final double? size;
  final BoxFit? fit;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    final iconColor = color ?? IconTheme.of(context).color;
    return SvgPicture.asset(
      assetName,
      width: size,
      height: size,
      fit: fit ?? BoxFit.contain,
      colorFilter: iconColor != null
          ? ColorFilter.mode(iconColor, BlendMode.srcIn)
          : null,
    );
  }
}
