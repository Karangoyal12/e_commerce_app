import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/widgets/appbar/appbar.dart';
import '../../../../../common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import '../../../../../common/widgets/icons/a_circular_icon.dart';
import '../../../../../common/widgets/images/a_rounded_image.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';

class AProductImageSlider extends StatelessWidget {
  const AProductImageSlider({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final dark = AHelperFunctions.isDarkMode(context);
    return ACurvedEdgeWidget(
      child: Container(
        color: dark ? AColors.darkerGrey : AColors.light,
        child: Stack(
          children: [
            /// Main large image
            const SizedBox(
                height: 400,
                child: Padding(
                  padding:
                  EdgeInsets.all(ASizes.productImageRadius * 2),
                  child: Center(
                      child: Image(
                          image: AssetImage(AImages.productImage5))),
                )),

            /// Image Slider
            Positioned(
              right: 0,
              bottom: 30,
              left: ASizes.defaultSpace,
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                    separatorBuilder: (_, __) =>
                    const SizedBox(width: ASizes.spaceBtwItems),
                    itemCount: 6,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    physics: const AlwaysScrollableScrollPhysics(),
                    itemBuilder: (_, index) => ARoundedImage(
                        width: 80,
                        backgroundColor:
                        dark ? AColors.dark : AColors.white,
                        border: Border.all(color: AColors.primary),
                        padding: const EdgeInsets.all(ASizes.sm),
                        imageUrl: AImages.productImage3)),
              ),
            ),

            /// Appbar Icons
            const AAppBar(
              showBackArrow: true,
              actions: [
                ACircularIcon(icon: Iconsax.heart5, color: Colors.red)
              ],
            )
          ],
        ),
      ),
    );
  }
}
