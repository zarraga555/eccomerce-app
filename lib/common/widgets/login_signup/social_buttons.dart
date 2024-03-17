import 'package:flutter/material.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';

class EccomerceSocialButtons extends StatelessWidget {
  const EccomerceSocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(border: Border.all(color: EccomerceColors.grey), borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              width: EccomerceSizes.iconMd,
              height: EccomerceSizes.iconMd,
              image: AssetImage(EccomerceImages.google),
            ),
          ),
        ),
        const SizedBox(width: EccomerceSizes.spaceBtwItems,),

        Container(
          decoration: BoxDecoration(border: Border.all(color: EccomerceColors.grey), borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              width: EccomerceSizes.iconMd,
              height: EccomerceSizes.iconMd,
              image: AssetImage(EccomerceImages.facebook),
            ),
          ),
        ),
        const SizedBox(width: EccomerceSizes.spaceBtwItems,),
        Container(
          decoration: BoxDecoration(border: Border.all(color: EccomerceColors.grey), borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              width: EccomerceSizes.iconMd,
              height: EccomerceSizes.iconMd,
              image: AssetImage(EccomerceImages.apple),
            ),
          ),
        ),
      ],
    );
  }
}