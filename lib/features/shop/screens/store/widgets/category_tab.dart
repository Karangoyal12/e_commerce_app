import 'package:e_commerce/common/widgets/layouts/grid_layout.dart';
import 'package:e_commerce/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:e_commerce/common/widgets/texts/section_heading.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widgets/brands/brand_show_case.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';

class ACategoryTab extends StatelessWidget {
  const ACategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: [
        Padding(

          padding: const EdgeInsets.all(ASizes.defaultSpace),
          child: Column(
            children: [
              /// Brands
              const ABrandShowcase(images: [AImages.productImage3,AImages.productImage2,AImages.productImage1]),
              const SizedBox(height: ASizes.spaceBtwItems),

              /// Products
              ASectionHeading(title: 'You might like',onPressed: (){}),
              const SizedBox(height: ASizes.spaceBtwItems),

              AGridLayout(itemCount: 4, itemBuilder: (_, index) => const AProductCardVertical()),
              const SizedBox(height: ASizes.spaceBtwSections),

            ],
          ),
        ),
      ],
    ) ;
  }
}
