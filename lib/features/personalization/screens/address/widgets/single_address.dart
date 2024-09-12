import 'package:e_commerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ASingleAddress extends StatelessWidget {
  const ASingleAddress({super.key, required this.selectedAddress});

  final bool selectedAddress;

  @override
  Widget build(BuildContext context) {
    final dark = AHelperFunctions.isDarkMode(context);
    return ARoundedContainer(
      padding: const EdgeInsets.all(ASizes.md),
      width: double.infinity,
      showBorder: true,
      backgroundColor: selectedAddress ? AColors.primary.withOpacity(0.5) : Colors.transparent,
      borderColor: selectedAddress ? Colors.transparent : dark ? AColors.darkerGrey : AColors.grey,
      margin: const EdgeInsets.only(bottom: ASizes.spaceBtwItems),
      child: Stack(
        children: [
          Positioned(
            right: 5,
            top: 0,
            child: Icon(selectedAddress ? Iconsax.tick_circle5 : null,
              color: selectedAddress ? dark ? AColors.light : AColors.dark : null,
            
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Sinem Unsal',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: ASizes.sm /2),
              const Text('(+123) 456 7890', maxLines: 1, overflow: TextOverflow.ellipsis),
              const SizedBox(height: ASizes.sm /2),
              const Text('82356 Timmy Coves, South Liana, Maine, 87665, USA', softWrap: true)

            ],
          )
        ],
      ),
    );
  }
}
