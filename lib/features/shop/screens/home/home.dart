import 'package:e_commerce/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:e_commerce/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:e_commerce/features/shop/screens/home/widgets/home_categories.dart';
import 'package:e_commerce/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/containers/search_container.dart';
import '../../../../common/widgets/layouts/grid_layout.dart';
import '../../../../common/widgets/texts/section_heading.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Header
            const APrimaryHeaderContainer(
              child: Column(
                children: [
                  /// Appbar
                  AHomeAppBar(),
                  SizedBox(
                    height: ASizes.spaceBtwSections,
                  ),

                  /// Searchbar
                  ASearchContainer(
                    text: 'Search in Store',
                  ),
                  SizedBox(height: ASizes.spaceBtwSections),

                  /// Categories

                  Padding(
                      padding: EdgeInsets.only(left: ASizes.defaultSpace),
                      child: Column(
                        children: [
                          /// Heading
                          ASectionHeading(
                            title: 'Popular Categories',
                            showActionButton: false,
                          ),
                          SizedBox(
                            height: ASizes.spaceBtwItems,
                          ),

                          /// Categories

                          AHomeCategories(),
                        ],
                      )
                  ),
                  SizedBox(height: ASizes.spaceBtwSections)
                ],
              ),
            ),

            /// Body
            Padding(
              padding: const EdgeInsets.all(ASizes.defaultSpace),
              child: Column(
                children: [
                  /// Promo slider
                  const APromoSlider(
                    banners: [
                      AImages.promoBanner1,
                      AImages.promoBanner2,
                      AImages.promoBanner3
                    ],
                  ),
                  const SizedBox(
                    height: ASizes.spaceBtwSections,
                  ),

                  /// Heading
                  ASectionHeading(title: 'Popular Products',onPressed: (){},),
                  const SizedBox(height: ASizes.spaceBtwItems,),

                  /// Popular products in grid view
                  AGridLayout(
                    itemCount: 4,
                    itemBuilder: (_, index) => const AProductCardVertical(),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
