import 'package:flutter/material.dart';

import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = AHelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
            height: 80,
            width: 80,
            image:
                AssetImage(dark ? AImages.lightAppLogo : AImages.darkAppLogo)),
        Text(
          ATexts.loginTittle,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(
          height: ASizes.sm,
        ),
        Text(
          ATexts.loginSubTittle,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}
