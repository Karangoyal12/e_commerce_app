import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/sizes.dart';

class ASocialButtons extends StatelessWidget {
  const ASocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: AColors.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
              onPressed: () {},
              icon: const Image(
                  width: ASizes.iconMd,
                  height: ASizes.iconMd,
                  image: AssetImage(AImages.google))),
        ),
        const SizedBox(
          width: ASizes.spaceBtwItems,
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: AColors.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
              onPressed: () {},
              icon: const Image(
                  width: ASizes.iconMd,
                  height: ASizes.iconMd,
                  image: AssetImage(AImages.facebook))),
        ),
      ],
    );
  }
}
