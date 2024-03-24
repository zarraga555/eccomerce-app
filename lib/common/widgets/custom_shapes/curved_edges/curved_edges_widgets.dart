import 'package:flutter/material.dart';

import 'curved_edges.dart';

class EccomerceCurvedWidet extends StatelessWidget {
  const EccomerceCurvedWidet({
    super.key, this.child,
  });

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: EccomerceCustomCurvedEdges(),
      child: child,
    );
  }
}