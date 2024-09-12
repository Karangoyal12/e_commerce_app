import 'package:e_commerce/common/widgets/texts/section_heading.dart';
import 'package:e_commerce/features/shop/screens/product_details/widgets/bottom_add_to_cart_widget.dart';
import 'package:e_commerce/features/shop/screens/product_details/widgets/product_attributes.dart';
import 'package:e_commerce/features/shop/screens/product_details/widgets/product_detail_image_slider.dart';
import 'package:e_commerce/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:e_commerce/features/shop/screens/product_reviews/product_reviews.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';

import 'widgets/rating_share_widget.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AHelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: const ABottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Product Image Slider
            const AProductImageSlider(),

            /// Product Details
            Padding(
                padding: const EdgeInsets.only(right: ASizes.defaultSpace,left: ASizes.defaultSpace,bottom: ASizes.defaultSpace),
              child: Column(
                children: [
                  /// Rating and Share Button
                  const ARatingAndShare(),

                  /// Price, Title, Stock and Brand
                  const AProductMetaData(),

                  /// Attributes
                  const ProductAttributes(),
                  const SizedBox(height: ASizes.spaceBtwSections),

                  /// Checkout Button
                  SizedBox(width: double.infinity,child: ElevatedButton(onPressed: (){}, child: const Text('Checkout'))),
                  const SizedBox(height: ASizes.spaceBtwSections),

                  /// Description
                  const ASectionHeading(title: 'Description', showActionButton: false),
                  const SizedBox(height: ASizes.spaceBtwItems),
                  const ReadMoreText(
                    'This is a product description for blue nike sleeve less vest. There are more things that can be added but now i have no time to add all the things',
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: 'Show more',
                    trimExpandedText: 'less',
                    moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                    lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                  ),

                  /// Reviews
                  const Divider(),
                  const SizedBox(height: ASizes.spaceBtwItems),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const ASectionHeading(title: 'Reviews(199)', showActionButton: false,),
                      IconButton(onPressed: () => Get.to(() => const ProductReviewsScreen()), icon: const Icon(Iconsax.arrow_right_3))
                    ],
                  ),
                  const SizedBox(height: ASizes.spaceBtwSections),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}


