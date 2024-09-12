import 'package:e_commerce/common/widgets/images/a_circular_image.dart';
import 'package:e_commerce/common/widgets/texts/a_brand_title_text_with_verified_icon.dart';
import 'package:e_commerce/common/widgets/texts/product_price_text.dart';
import 'package:e_commerce/common/widgets/texts/product_title_text.dart';
import 'package:e_commerce/utils/constants/enums.dart';
import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import '../../../../../common/widgets/custom_shapes/containers/rounded_container.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';

class AProductMetaData extends StatelessWidget {
  const AProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AHelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// Price and Sale price
        Row(
          children: [
            /// Sale tag
            ARoundedContainer(
              radius: ASizes.sm,
              backgroundColor: AColors.secondary.withOpacity(0.8),
              padding: const EdgeInsets.symmetric(horizontal: ASizes.sm, vertical: ASizes.xs),
              child: Text('25%', style: Theme.of(context).textTheme.labelLarge!.apply(color: AColors.black)),
            ),
            const SizedBox(width: ASizes.spaceBtwItems),
            /// Price
            Text('\$250', style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough)),
            const SizedBox(width: ASizes.spaceBtwItems),
            const AProductPriceText(price: '175',isLarge: true),
          ],
        ),
        const SizedBox(height: ASizes.spaceBtwItems / 1.5),
        /// Title
        const AProductTitleText(title: 'Green Nike Sports Shirt'),
        const SizedBox(height: ASizes.spaceBtwItems / 1.5),

        /// stock status
        Row(
          children: [
            const AProductTitleText(title: 'Status'),
            const SizedBox(width: ASizes.spaceBtwItems),
            Text('In Stock', style: Theme.of(context).textTheme.titleMedium),
          ],
        ),
        const SizedBox(height: ASizes.spaceBtwItems / 1.5),
        /// Brand
        Row(
          children: [
            ACircularImage(image: AImages.cosmeticsIcon,width: 32, height: 32, overlayColor: dark ? AColors.white : AColors.black),
            const ABrandTitleWithVerifiedIcon(title: 'Nike', brandTextSize: TextSizes.medium),
          ],
        ),
      ],
    );
  }
}
