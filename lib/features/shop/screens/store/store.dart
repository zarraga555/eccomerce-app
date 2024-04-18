import 'package:eccomerce_app/common/widgets/appbar/appbar.dart';
import 'package:eccomerce_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:eccomerce_app/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:eccomerce_app/common/widgets/layouts/grid_layout.dart';
import 'package:eccomerce_app/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:eccomerce_app/common/widgets/texts/brand_title_text_with_verified_icon.dart';
import 'package:eccomerce_app/common/widgets/texts/section_heading.dart';
import 'package:eccomerce_app/utils/constants/enums.dart';
import 'package:eccomerce_app/utils/constants/image_strings.dart';
import 'package:eccomerce_app/utils/constants/sizes.dart';
import 'package:eccomerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/images/eccomerce_circular_image.dart';
import '../../../../utils/constants/colors.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: EccomerceAppBar(
        title: Text('Store', style: Theme.of(context).textTheme.headlineMedium,),
        actions: [
          EccomerceCartCountIcon(iconColor: EccomerceColors.dark, onPressed: (){})
        ],
      ),
      body: NestedScrollView(headerSliverBuilder: (__, innerBoxIsScrolled) {
        return [
          SliverAppBar(
            automaticallyImplyLeading: false,
            pinned: true,
            floating: true,
            backgroundColor: EccomerceHelperFunctions.isDarkMode(context) ? EccomerceColors.black : EccomerceColors.white,
            expandedHeight: 440,

            flexibleSpace: Padding(
              padding: const EdgeInsets.all(EccomerceSizes.defaultSpace),
              child: ListView(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  /// Search bar
                  const SizedBox(height: EccomerceSizes.spaceBtwItems,),
                  const EccomerceSeachContainer(text: 'Search in Store', showBorder: true, showBackground: false, padding: EdgeInsets.zero,),
                  const SizedBox(height:EccomerceSizes.spaceBtwSections),

                ///   -- Featured Brands --
                  EccomerceSectionHeading(title: 'Featured Brands', showActionButton: true, onPressed: () {},),
                  const SizedBox(height: EccomerceSizes.spaceBtwItems / 1.5),
                  
                  EccomerceGridLayout(itemCount: 4, mainAxisExtent: 80 ,itemBuilder: (__, index) {
                    return GestureDetector(
                      onTap: () {},
                      child: EccomerceRoundedContainer(
                        padding: const EdgeInsets.all(EccomerceSizes.sm),
                        showBorder: true,
                        backgroundColor: Colors.transparent,
                        child: Row(
                          children: [
                            ///   -- Icon
                            Flexible(
                              child: EccomerceCircularImage(
                                isNetworkImage: false,
                                image: EccomerceImages.clothIcon,
                                backgroundColor: Colors.transparent,
                                overlayColor: EccomerceHelperFunctions.isDarkMode(context) ? EccomerceColors.white : EccomerceColors.black,
                              ),
                            ),
                            const SizedBox(width: EccomerceSizes.spaceBtwItems / 2),
                            ///   -- Text
                            Expanded(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const EccomerceBrandTitleWithVerifiedIcon(title: 'Nike', brandTextSizes: TextSizes.large,),
                                  Text(
                                    '256 products',
                                    overflow: TextOverflow.ellipsis,
                                    style: Theme.of(context).textTheme.labelMedium,
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  })
                ],
              ),
            ),
          ),
        ];
      }, body: Container(),
      ),
    );
  }
}