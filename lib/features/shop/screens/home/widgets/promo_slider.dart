import 'package:carousel_slider/carousel_slider.dart';
import 'package:eccomerce_app/features/shop/controllers/home_controller.dart';
import 'package:eccomerce_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../common/widgets/custom_shapes/containers/circular_container.dart';
import '../../../../../common/widgets/images/eccomerce_rounded_image.dart';
import '../../../../../utils/constants/sizes.dart';

class EccomercePromoSlider extends StatelessWidget {
  const EccomercePromoSlider({
    super.key,
    required this.banners,
  });

  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            viewportFraction: 1,
            onPageChanged: (index, _) => controller.updatePageIndicator(index),
          ),
          items: banners.map((url) => EccomerceRoundedImage(imageUrl: url)).toList(),
        ),
        const SizedBox(height: EccomerceSizes.spaceBtwItems,),
        Center(
          child: Obx(
            () =>  Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                for (int i = 0; i < banners.length; i++)
                  EccomerceCircularContainer(
                      width: 20,
                      height: 4,
                      margin: const EdgeInsets.only(right: 10),
                      backgroundColor: controller.carouselCurrentIndex.value == i ? EccomerceColors.primary : EccomerceColors.grey
                  ),
              ],
            ),
          ),
        )
      ],
    );
  }
}