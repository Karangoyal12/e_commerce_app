import 'package:e_commerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:e_commerce/common/widgets/texts/section_heading.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class ABillingPaymentSection extends StatelessWidget {
  const ABillingPaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        ASectionHeading(title: 'Payment Method', buttonTitle: 'Change', onPressed: (){}),
        const SizedBox(height: ASizes.spaceBtwItems/2),
        Row(
          children: [
            ARoundedContainer(
              width: 60,
              height: 35,
              backgroundColor: dark ? AColors.light : AColors.white,
              padding: const EdgeInsets.all(ASizes.sm),
              child: const Image(image: AssetImage(AImages.paypal),fit: BoxFit.contain),
            ),
            const SizedBox(width: ASizes.spaceBtwItems/2),
            Text('Paypal', style: Theme.of(context).textTheme.bodyLarge),

          ],
        )

      ],
    );
  }
}
