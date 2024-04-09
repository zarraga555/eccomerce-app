import 'package:eccomerce_app/utils/constants/sizes.dart';
import 'package:eccomerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';

class EccomerceCircularIcon extends StatelessWidget {
  const EccomerceCircularIcon({
    super.key,
    this.width,
    this.height,
    this.size = EccomerceSizes.lg,
    required this.icon,
    this.backgroundColor,
    this.onPressed,
    this.color,
  });

  final double? width, height, size;
  final IconData icon;
  final Color? color;
  final Color? backgroundColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: backgroundColor != null
              ? backgroundColor!
              : EccomerceHelperFunctions.isDarkMode(context)
                  ? EccomerceColors.black.withOpacity(0.9)
                  : EccomerceColors.white.withOpacity(0.9),
        borderRadius: BorderRadius.circular(100),
      ),
      child: IconButton(onPressed: onPressed, icon: Icon(icon, color: color, size: size,),)
    );
  }
}