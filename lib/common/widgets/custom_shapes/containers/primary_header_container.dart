import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../curved_edges/curved_edges_widgets.dart';
import 'circular_container.dart';

class EccomercePrimaryHeaderContainer extends StatelessWidget {
  const EccomercePrimaryHeaderContainer({
    super.key, required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return EccomerceCurvedWidet(
      child: Container(
        color: EccomerceColors.primary,
        padding: const EdgeInsets.only(bottom: 0),
        child: SizedBox(
          height: 400,
          child: Stack(
            children: [
              Positioned(top: -150, right: -250, child: EccomerceCircularContainer(backgroundColor: EccomerceColors.textWhite.withOpacity(0.1),)),
              Positioned(top: 100, right: -300, child: EccomerceCircularContainer(backgroundColor: EccomerceColors.textWhite.withOpacity(0.1),)),
              child,
            ],
          ),
        ),
      ),
    );
  }
}