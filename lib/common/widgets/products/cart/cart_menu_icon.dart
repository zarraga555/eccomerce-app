import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';

class EccomerceCartCountIcon extends StatelessWidget {
  const EccomerceCartCountIcon({
    super.key, required this.iconColor, required this.onPressed,
  });

  final Color iconColor;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(onPressed: onPressed ,icon: Icon(Iconsax.shopping_bag, color: iconColor,),),
        Positioned(
          right: 0,
          child: Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(
              color: EccomerceColors.black,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Center(
              child: Text("2", style: Theme.of(context).textTheme.labelLarge!.apply(color: EccomerceColors.white, fontSizeFactor: 0.8),),
            ),
          ),
        ),
      ],
    );
  }
}