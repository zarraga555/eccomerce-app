import 'package:eccomerce_app/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:eccomerce_app/features/shop/screens/home/widgets/home_categories.dart';
import 'package:eccomerce_app/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:eccomerce_app/utils/constants/colors.dart';
import 'package:eccomerce_app/utils/constants/image_strings.dart';
import 'package:eccomerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/containers/search_container.dart';
import '../../../../common/widgets/layouts/grid_layout.dart';
import '../../../../common/widgets/product_cards/product_card_vertical.dart';
import '../../../../common/widgets/texts/section_heading.dart';

class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Header
            const EccomercePrimaryHeaderContainer(
              child: Column(
                children: [
                  /// AppBar
                  EccomerceHomeAppBar(),
                  SizedBox(height: EccomerceSizes.spaceBtwSections,),
                //   Search
                  EccomerceSeachContainer(text: 'Search in Store',),
                  SizedBox(height: EccomerceSizes.spaceBtwSections,),
                //   Categories
                  Padding(
                    padding: EdgeInsets.only(left: EccomerceSizes.defaultSpace),
                    child: Column(
                      children: [
                        /// Heading
                        EccomerceSectionHeading(title: 'Popular Categories', showActionButton: false, textColor: EccomerceColors.white,),
                        SizedBox(height: EccomerceSizes.spaceBtwItems),
                      ///   Categories
                        EccomerceHomeCategories(),
                      ],
                    ),
                  ),
                ],
              ),
            ),

          //   Body -- Tutorial
            Padding(
              padding: const EdgeInsets.all(EccomerceSizes.defaultSpace),
              child: Column(
                children: [
                //   Promo Slider
                  const EccomercePromoSlider(banners: [EccomerceImages.promoBanner1, EccomerceImages.promoBanner2, EccomerceImages.promoBanner3],),
                  const SizedBox(height: EccomerceSizes.spaceBtwSections,),
                // Heading
                  EccomerceSectionHeading(title: 'Popular Products', onPressed: () {},),
                  const SizedBox(height: EccomerceSizes.spaceBtwItems),
                //   Popular Products
                  EccomerceGridLayout(itemCount: 2, itemBuilder: (_, index ) => const EccomerceCardVertical(),)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}