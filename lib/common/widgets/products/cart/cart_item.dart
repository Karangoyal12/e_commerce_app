import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';
import '../../images/a_rounded_image.dart';
import '../../texts/a_brand_title_text_with_verified_icon.dart';
import '../../texts/product_title_text.dart';

class ACartItem extends StatelessWidget {
  const ACartItem({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final dark = AHelperFunctions.isDarkMode(context);
    return Row(
      children: [
        /// Image
        ARoundedImage(
            imageUrl: AImages.productImage1,
            width: 60,
            height: 60,
            padding: const EdgeInsets.all(ASizes.sm),
            backgroundColor:
            dark ? AColors.darkerGrey : AColors.light),
        const SizedBox(width: ASizes.spaceBtwItems),

        /// Title, Price and Size
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              const ABrandTitleWithVerifiedIcon(title: 'Nike'),
              const AProductTitleText(title: 'Black Sports Shoes',maxLines: 1),

              /// Attributes
              Text.rich(
                  TextSpan(
                      children: [
                        TextSpan(text: 'Color', style: Theme.of(context).textTheme.bodySmall),
                        TextSpan(text: 'Green', style: Theme.of(context).textTheme.bodyLarge),
                        TextSpan(text: 'Size', style: Theme.of(context).textTheme.bodySmall),
                        TextSpan(text: 'UK 07', style: Theme.of(context).textTheme.bodyLarge),
                      ]
                  )
              )
            ],
          ),
        )
      ],
    );
  }
}
