import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../custom_shapes/containers/rounded_container.dart';

class ACouponCode extends StatelessWidget {
  const ACouponCode({
    super.key,

  });



  @override
  Widget build(BuildContext context) {
      final dark = AHelperFunctions.isDarkMode(context);
    return ARoundedContainer(
      showBorder: true,
      backgroundColor: dark ? AColors.dark : AColors.white,
      padding: const EdgeInsets.only(
          top: ASizes.sm,
          bottom: ASizes.sm,
          right: ASizes.sm,
          left: ASizes.md),
      child: Row(
        children: [
          Flexible(
            child: TextFormField(
              decoration: const InputDecoration(
                hintText: 'Have a promo code? Enter here',
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
              ),
            ),
          ),

          /// Button
          SizedBox(
              width: 100,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    foregroundColor: dark ? AColors.white.withOpacity(0.5) : AColors.dark.withOpacity(0.5),
                    backgroundColor: AColors.grey.withOpacity(0.2),
                    side: BorderSide(color: AColors.grey.withOpacity(0.1))
                ), child: const Text('Apply'),
              )
          )
        ],
      ),
    );
  }
}
