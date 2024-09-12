import 'package:e_commerce/common/widgets/texts/section_heading.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class ABillingAddressSection extends StatelessWidget {
  const ABillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ASectionHeading(title: 'Shipping Address', buttonTitle: 'Change', onPressed: (){}),
        Text('Apper', style: Theme.of(context).textTheme.bodyLarge),
        const SizedBox(height: ASizes.spaceBtwItems/2),
        Row(
          children: [
            const Icon(Icons.phone, color: AColors.grey, size: 16),
            const SizedBox(width: ASizes.spaceBtwItems),
            Text('9745235658', style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        const SizedBox(height: ASizes.spaceBtwItems/2),
        Row(
          children: [
            const Icon(Icons.location_history, color: AColors.grey, size: 16),
            const SizedBox(width: ASizes.spaceBtwItems),
            Expanded(child: Text('Sinem unsal, Maine 87654, USA', style: Theme.of(context).textTheme.bodyMedium,softWrap: true)),
          ],
        ),
        


      ],
    );
  }
}
