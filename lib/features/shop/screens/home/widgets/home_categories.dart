import 'package:flutter/material.dart';

import '../../../../../common/widgets/image_text/vertical_image_text.dart';
import '../../../../../utils/constants/image_strings.dart';

class EccomerceHomeCategories extends StatelessWidget {
  const EccomerceHomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: 6,
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, index){
            return EccomerceVerticalImageText(
              image: EccomerceImages.shoeIcon,
              title: 'Shoes',
              onTap: (){},
            );
          }
      ),
    );
  }
}