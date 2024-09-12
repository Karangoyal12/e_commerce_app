import 'package:e_commerce/common/styles/shadows.dart';
import 'package:e_commerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:e_commerce/common/widgets/images/a_rounded_image.dart';
import 'package:e_commerce/features/shop/screens/product_details/product_details.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../icons/a_circular_icon.dart';
import '../../texts/a_brand_title_text_with_verified_icon.dart';
import '../../texts/product_price_text.dart';
import '../../texts/product_title_text.dart';

class AProductCardVertical extends StatelessWidget {
  const AProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AHelperFunctions.isDarkMode(context);

    /// Container with side padding, color, edges, radius and shadow.
    return GestureDetector(
      onTap: () => Get.to(() => const ProductDetails()),
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [AShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(ASizes.productImageRadius),
          color: dark ? AColors.darkerGrey : AColors.white,
        ),
        child: Column(
          children: [
            /// Thumbnail, wishlist Button, Discount tag
            ARoundedContainer(
              height: 180,
              padding: const EdgeInsets.all(ASizes.sm),
              backgroundColor: dark ? AColors.dark : AColors.light,
              child: Stack(
                children: [
                  /// Thumbnail Image

                  const ARoundedImage(
                    imageUrl: AImages.productImage1,
                    applyImageRadius: true,
                  ),

                  /// sale tag
                  Positioned(
                    top: 12,
                    child: ARoundedContainer(
                      radius: ASizes.sm,
                      backgroundColor: AColors.secondary.withOpacity(0.8),
                      padding: const EdgeInsets.symmetric(
                          horizontal: ASizes.sm, vertical: ASizes.xs),
                      child: Text(
                        '25%',
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .apply(color: AColors.black),
                      ),
                    ),
                  ),

                  /// Favourite Icon button
                  const Positioned(
                      top: 0,
                      right: 0,
                      child: ACircularIcon(
                        icon: Iconsax.heart5,
                        color: Colors.red,
                      ))
                ],
              ),
            ),
            const SizedBox(
              height: ASizes.spaceBtwItems / 2
            ),

            /// Details
            const Padding(
              padding: EdgeInsets.only(left: ASizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AProductTitleText(
                    title: 'Green Nike Air Shoes',
                    smallSize: true,
                  ),
                  SizedBox(
                    height: ASizes.spaceBtwItems / 2,
                  ),
                  ABrandTitleWithVerifiedIcon(title: 'Nike',),
                ],
              ),
            ),
            const Spacer(),

            /// Price Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                /// Price
                const Padding(
                  padding: EdgeInsets.only(left: ASizes.sm),
                  child: AProductPriceText(
                    price: '35.5',
                  ),
                ),

                /// Add to cart button
                Container(
                  decoration: const BoxDecoration(
                      color: AColors.dark,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(ASizes.cardRadiusMd),
                          bottomRight:
                              Radius.circular(ASizes.productImageRadius))),
                  child: const SizedBox(
                      width: ASizes.iconLg * 1.2,
                      height: ASizes.iconLg * 1.2,
                      child: Center(
                        child: Icon(
                          Iconsax.add,
                          color: AColors.white,
                        ),
                      )),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}


