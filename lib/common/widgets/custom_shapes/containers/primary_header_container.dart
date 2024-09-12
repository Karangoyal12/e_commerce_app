import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../curved_edges/curved_edges_widget.dart';
import 'circular_container.dart';

class APrimaryHeaderContainer extends StatelessWidget {
  const APrimaryHeaderContainer({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ACurvedEdgeWidget(
      child: Container(
        color: AColors.primary,
        padding: const EdgeInsets.all(0),
        child: Stack(
          children: [
            /// Background custom shapes
            Positioned(
                top: -150,
                right: -250,
                child: ACircularContainer(
                  backgroundColor: AColors.textWhite.withOpacity(0.1),
                )),
            Positioned(
                top: 100,
                right: -300,
                child: ACircularContainer(
                  backgroundColor: AColors.textWhite.withOpacity(0.1),
                )),
            child,
          ],
        ),
      ),
    );
  }
}
