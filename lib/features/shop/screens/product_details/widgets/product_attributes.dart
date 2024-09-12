import 'package:e_commerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:e_commerce/common/widgets/texts/product_price_text.dart';
import 'package:e_commerce/common/widgets/texts/product_title_text.dart';
import 'package:e_commerce/common/widgets/texts/section_heading.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widgets/chips/choice_chip.dart';

class ProductAttributes extends StatelessWidget {
  const ProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        /// Selected Attribute Pricing and Description
        ARoundedContainer(
          padding: const EdgeInsets.all(ASizes.md),
          backgroundColor: dark ? AColors.darkerGrey : AColors.grey,
          child: Column(
            children: [
              /// Title, price and Stock status
              Row(
                children: [
                  const ASectionHeading(
                      title: 'Variation', showActionButton: false),
                  const SizedBox(width: ASizes.spaceBtwItems),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const AProductTitleText(
                              title: 'Price : ', smallSize: true),

                          /// Actual Price
                          Text('\$25',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall!
                                  .apply(
                                      decoration: TextDecoration.lineThrough)),
                          const SizedBox(width: ASizes.spaceBtwItems),

                          /// Sale price
                          const AProductPriceText(price: '20'),
                        ],
                      ),

                      /// Stock
                      Row(
                        children: [
                          const AProductTitleText(title: 'Stock : ', smallSize: true),
                          Text('In Stock',
                              style: Theme.of(context).textTheme.titleMedium)
                        ],
                      )
                    ],
                  ),
                ],
              ),

              /// Variation description
              const AProductTitleText(
                title:
                    'This is the Description of the product and it can go upto max 4 lines',
                smallSize: true,
                maxLines: 4,
              )
            ],
          ),
        ),
        const SizedBox(height: ASizes.spaceBtwItems),

        /// Attributes
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ASectionHeading(title: 'Colors',showActionButton: false),
            const SizedBox(height: ASizes.spaceBtwItems / 2),
            Wrap(
              spacing: 8,
              children: [
                AChoiceChip(text: 'Green', selected: true, onSelected: (value){},),
                AChoiceChip(text: 'Blue', selected: false, onSelected: (value){},),
                AChoiceChip(text: 'Yellow', selected: false, onSelected: (value){},),
              ],
            )
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ASectionHeading(title: 'Size',showActionButton: false),
            const SizedBox(height: ASizes.spaceBtwItems / 2),
            Wrap(
              spacing: 8,
              children: [
                AChoiceChip(text: 'EU 34', selected: true, onSelected: (value){},),
                AChoiceChip(text: 'EU 36', selected: false, onSelected: (value){},),
                AChoiceChip(text: 'EU 38', selected: false, onSelected: (value){},),
              ],
            )
          ],
        )
      ],
    );
  }
}

