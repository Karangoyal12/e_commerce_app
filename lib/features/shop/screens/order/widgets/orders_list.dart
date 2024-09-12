import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/widgets/custom_shapes/containers/rounded_container.dart';
import '../../../../../utils/constants/sizes.dart';

class AOrderListItems extends StatelessWidget {
  const AOrderListItems({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AHelperFunctions.isDarkMode(context);
    return ListView.separated(
      separatorBuilder: (_,__) => const SizedBox(height: ASizes.spaceBtwItems),
      shrinkWrap: true,
      itemCount: 5,
      itemBuilder:(_,index) => ARoundedContainer(
        showBorder: true,
        padding: const EdgeInsets.all(ASizes.md),
        backgroundColor: dark ? AColors.dark : AColors.light,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            /// Row 1
            Row(
              children: [
                /// Icon 1
                const Icon(Iconsax.ship),
                const SizedBox(width: ASizes.spaceBtwItems/2),
      
                /// Status and Date 2
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Processing', style: Theme.of(context).textTheme.bodyLarge!.apply(color: AColors.primary, fontWeightDelta: 1)),
                      Text('10 Sep 2024', style: Theme.of(context).textTheme.headlineSmall),
                    ],
                  ),
                ),
      
                /// Icon 3
                IconButton(onPressed: (){}, icon: const Icon(Iconsax.arrow_right_34, size: ASizes.iconSm),)
              ],
            ),
            const SizedBox(height: ASizes.spaceBtwItems),
      
            /// Row 2
            Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      /// Icon 1
                      const Icon(Iconsax.tag),
                      const SizedBox(width: ASizes.spaceBtwItems/2),
                  
                      /// Status and Date 2
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Order', style: Theme.of(context).textTheme.labelMedium),
                            Text('[#6485]', style: Theme.of(context).textTheme.titleMedium),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      /// Icon 1
                      const Icon(Iconsax.calendar),
                      const SizedBox(width: ASizes.spaceBtwItems/2),
                  
                      /// Status and Date 2
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Shipping Date', style: Theme.of(context).textTheme.labelMedium),
                            Text('15 Nov 2024', style: Theme.of(context).textTheme.titleMedium),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
      
          ],
        ),
      ),
    );
  }
}
