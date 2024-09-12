import 'package:e_commerce/features/authentication/controllers.onboarding/signup/signup_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class ATermsAndConditionCheckbox extends StatelessWidget {
  const ATermsAndConditionCheckbox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = SignupController.instance;
    final dark = AHelperFunctions.isDarkMode(context);

    return Row(
      children: [
        SizedBox(
            width: 24,
            height: 24,
            child: Obx(() => Checkbox(value: controller.privacyPolicy.value, onChanged: (value) => controller.privacyPolicy.value = ! controller.privacyPolicy.value))),
        const SizedBox(
          width: ASizes.spaceBtwItems,
        ),
        Flexible(
          child: Text.rich(TextSpan(children: [
            TextSpan(
                text: '${ATexts.iAgreeTo} ',
                style: Theme.of(context).textTheme.bodySmall),
            TextSpan(
                text: '${ATexts.privacyPolicy} ',
                style: Theme.of(context).textTheme.bodyMedium!.apply(
                    color: dark ? AColors.white : AColors.primary,
                    decoration: TextDecoration.underline,
                    decorationColor: dark ? AColors.white : AColors.primary)),
            TextSpan(
                text: '${ATexts.and} ',
                style: Theme.of(context).textTheme.bodySmall),
            TextSpan(
                text: ATexts.termsOfUse,
                style: Theme.of(context).textTheme.bodyMedium!.apply(
                    color: dark ? AColors.white : AColors.primary,
                    decoration: TextDecoration.underline,
                    decorationColor: dark ? AColors.white : AColors.primary)),
          ])),
        )
      ],
    );
  }
}
