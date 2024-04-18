import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/device/device_utility.dart';
import '../../../../utils/helpers/helper_functions.dart';

class EccomerceSeachContainer extends StatelessWidget {
  const EccomerceSeachContainer({
    super.key,
    required this.text,
    this.icon = Iconsax.search_normal,
    this.showBackground = true,
    this.showBorder = true,
    this.onTap,
    this.padding = const EdgeInsets.symmetric(horizontal: EccomerceSizes.defaultSpace),
  });

  final String text;
  final IconData? icon;
  final bool showBackground, showBorder;
  final VoidCallback? onTap;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {

    final dark = EccomerceHelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: padding,
        child: Container(
          width: EccomerceDeviceUtils.getScreenWidth(context),
          padding: const EdgeInsets.all(EccomerceSizes.md),
          decoration: BoxDecoration(
            color: showBackground ? dark ? EccomerceColors.dark : EccomerceColors.light : Colors.transparent,
            borderRadius: BorderRadius.circular(EccomerceSizes.cardRadiusLg),
            border: showBorder ? Border.all(color: EccomerceColors.grey) : null,
          ),
          child: Row(
            children: [
              Icon(icon, color: EccomerceColors.darkerGrey,),
              const SizedBox(width: EccomerceSizes.spaceBtwItems,),
              Text(text, style: Theme.of(context).textTheme.bodySmall,),
            ],
          ),
        ),
      ),
    );
  }
}