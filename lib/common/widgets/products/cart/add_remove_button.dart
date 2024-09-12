import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../icons/a_circular_icon.dart';

class AProductQuantityWithAddRemove extends StatelessWidget {
  const AProductQuantityWithAddRemove({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final dark = AHelperFunctions.isDarkMode(context);
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        ACircularIcon(
          icon: Iconsax.minus,
          width: 32,
          height: 32,
          size: ASizes.md,
          color: dark ? AColors.white : AColors.black,
          backgroundColor: dark ? AColors.darkerGrey : AColors.light,
        ),
        const SizedBox(width: ASizes.spaceBtwItems),

        /// Number of products added
        Text('2', style: Theme.of(context).textTheme.titleSmall),
        const SizedBox(width: ASizes.spaceBtwItems),

        /// Add icon
        const ACircularIcon(
          icon: Iconsax.add,
          width: 32,
          height: 32,
          size: ASizes.md,
          color:AColors.white,
          backgroundColor: AColors.primary,
        ),
      ],
    );
  }
}
