import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';
import '../custom_shapes/containers/rounded_container.dart';
import '../products/product_cards/brand_card.dart';

class ABrandShowcase extends StatelessWidget {
  const ABrandShowcase({
    super.key, required this.images,
  });

  final List<String> images;


  @override
  Widget build(BuildContext context) {
    return ARoundedContainer(
      showBorder: true,
      borderColor: AColors.darkGrey,
      backgroundColor: Colors.transparent,
      margin: const EdgeInsets.only(bottom: ASizes.spaceBtwItems),
      padding: const EdgeInsets.all(ASizes.md),
      child: Column(
        children: [
          /// Brand With product count
          const ABrandCard(showBorder: false),
          const SizedBox(height: ASizes.spaceBtwItems),

          /// Brand top 3 product images
          Row(
            children:
            images.map((image) => brandTopProductImageWidget(image, context)).toList(),
          )

        ],
      ),

    );
  }

  Widget brandTopProductImageWidget(String image,context) {
    return Expanded(
      child: ARoundedContainer(
        height: 100,
        backgroundColor: AHelperFunctions.isDarkMode(context) ? AColors.darkerGrey : AColors.light,
        margin: const EdgeInsets.only(right: ASizes.sm),
        padding: const EdgeInsets.all(ASizes.md),
        child:  Image(image: AssetImage(image),fit: BoxFit.contain,),
      ),
    );
  }
}
