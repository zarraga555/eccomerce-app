import 'package:eccomerce_app/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:eccomerce_app/features/shop/screens/home/widgets/home_categories.dart';
import 'package:eccomerce_app/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:eccomerce_app/utils/constants/colors.dart';
import 'package:eccomerce_app/utils/constants/image_strings.dart';
import 'package:eccomerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/containers/search_container.dart';
import '../../../../common/widgets/texts/section_heading.dart';

class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Header
            EccomercePrimaryHeaderContainer(
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
              padding: EdgeInsets.all(EccomerceSizes.defaultSpace),
              child: EccomercePromoSlider(banners: [EccomerceImages.promoBanner1, EccomerceImages.promoBanner2, EccomerceImages.promoBanner3],)
            ),
          ],
        ),
      ),
    );
  }
}