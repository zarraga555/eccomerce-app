import 'package:eccomerce_app/common/styles/shadows.dart';
import 'package:eccomerce_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:eccomerce_app/common/widgets/images/eccomerce_rounded_image.dart';
import 'package:eccomerce_app/common/widgets/texts/product_title_text.dart';
import 'package:eccomerce_app/utils/constants/colors.dart';
import 'package:eccomerce_app/utils/constants/image_strings.dart';
import 'package:eccomerce_app/utils/constants/sizes.dart';
import 'package:eccomerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../icons/eccomerce_circular_icon.dart';

class EccomerceCardVertical extends StatelessWidget {
  const EccomerceCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = EccomerceHelperFunctions.isDarkMode(context);
    //   Container with side paddings, color, edges, radius and shadow
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [EccomerceShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(EccomerceSizes.productImageRadius),
          color: dark ? EccomerceColors.darkGrey : EccomerceColors.white,
        ),
        child: Column(
          children: [
            ///   -- Thumbnails, Wishlist Button, Discount Tag --
          EccomerceRoundedContainer(
              height: 180,
              padding: const EdgeInsets.all(EccomerceSizes.sm),
              backgroundColor: dark ? EccomerceColors.dark : EccomerceColors.light,
              child: Stack(
                children: [
                ///   -- Thumbnail image --
                  const EccomerceRoundedImage(imageUrl: EccomerceImages.productImage1, applyImageRadius: true,),
                ///   -- Sale Tag --
                  Positioned(
                    top: 12,
                    child: EccomerceRoundedContainer(
                      radius: EccomerceSizes.sm,
                      backgroundColor: EccomerceColors.secondary.withOpacity(0.8),
                      padding: const EdgeInsets.symmetric(horizontal: EccomerceSizes.sm, vertical:EccomerceSizes.xs),
                      child: Text('25%', style: Theme.of(context).textTheme.labelLarge!.apply(color: EccomerceColors.black),),
                    ),
                  ),
                ///   -- Favourites Icon Button --
                  const Positioned(
                    top: 0,
                    right: 0,
                    child: EccomerceCircularIcon(icon: Iconsax.heart5, color: Colors.red),
                  )
                ],
              ),
            ),
          const SizedBox(height: EccomerceSizes.spaceBtwItems / 2,),
      
            ///   Details
          Padding(
              padding: const EdgeInsets.only(left: EccomerceSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const EccomerceProductTitleText(title: 'Green Nike Air Shoes', smallSize: true,),
                  const SizedBox(height:EccomerceSizes.spaceBtwItems / 2,),
                  Row(
                    children: [
                      Text('Nike', overflow: TextOverflow.ellipsis, maxLines: 1, style: Theme.of(context).textTheme.labelMedium,),
                      const SizedBox(width: EccomerceSizes.xs),
                      const Icon(Iconsax.verify5, color: EccomerceColors.primary, size: EccomerceSizes.iconXs,),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '\$35.5',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                      Container(
                        decoration: const BoxDecoration(
                          color: EccomerceColors.dark,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(EccomerceSizes.cardRadiusMd),
                            bottomRight: Radius.circular(EccomerceSizes.productImageRadius),
                          ),
                        ),
                        child: const SizedBox(
                          width: EccomerceSizes.iconLg * 1.2,
                          height: EccomerceSizes.iconLg * 1.2,
                            child: Center(child: Icon(Iconsax.add, color: EccomerceColors.white,)),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}