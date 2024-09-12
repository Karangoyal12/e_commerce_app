import 'package:flutter/material.dart';

import '../../../utils/constants/sizes.dart';

class AGridLayout extends StatelessWidget {
  const AGridLayout({
    super.key,
    required this.itemCount,
    this.mainAxisExtent = 288,
    required this.itemBuilder,
  });

  final int itemCount;
  final double? mainAxisExtent;
  final Widget? Function(BuildContext, int) itemBuilder;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: itemCount,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisExtent: mainAxisExtent,
          mainAxisSpacing: ASizes.gridViewSpacing,
          crossAxisSpacing: ASizes.gridViewSpacing),
      itemBuilder: itemBuilder,
    );
  }
}
