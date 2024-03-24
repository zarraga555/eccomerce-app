import 'package:flutter/material.dart';

import '../../../../../common/widgets/appbar/appbar.dart';
import '../../../../../common/widgets/products/cart/cart_menu_icon.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/text_strings.dart';

class EccomerceHomeAppBar extends StatelessWidget {
  const EccomerceHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return EccomerceAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(EccomerceTexts.homeAppbarTitle, style: Theme.of(context).textTheme.labelMedium!.apply(color: EccomerceColors.grey)),
          Text(EccomerceTexts.homeAppbarSubTitle, style: Theme.of(context).textTheme.headlineSmall!.apply(color: EccomerceColors.grey)),
        ],
      ),
      actions: [
        EccomerceCartCountIcon(iconColor: EccomerceColors.white, onPressed: () {  },),
      ],
    );
  }
}