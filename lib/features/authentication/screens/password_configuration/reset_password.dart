import 'package:e_commerce/features/authentication/screens/login/login.dart';
import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/constants/text_strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/helpers/helper_functions.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => Get.back(),
              icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(ASizes.defaultSpace),
        child: Column(
          children: [
            /// Image with 60% of screen width
            Image(
              image: const AssetImage(AImages.deliveredEmailIllustration),
              width: AHelperFunctions.screenWidth() * 0.6,
            ),
            const SizedBox(
              height: ASizes.spaceBtwSections,
            ),

            /// Tittle and SubTittle
            Text(
              ATexts.changeYourPasswordTittle,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: ASizes.spaceBtwItems,
            ),
            Text(
              ATexts.changeYourPasswordSubTittle,
              style: Theme.of(context).textTheme.labelMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: ASizes.spaceBtwSections,
            ),

            /// Buttons
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () => Get.off(() => const LoginScreen()),
                  child: const Text(ATexts.done)),
            ),
            const SizedBox(
              height: ASizes.spaceBtwItems,
            ),
            SizedBox(
              width: double.infinity,
              child: TextButton(
                  onPressed: () {}, child: const Text(ATexts.resendEmail)),
            ),
          ],
        ),
      ),
    );
  }
}
