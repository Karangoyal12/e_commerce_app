import 'package:e_commerce/features/authentication/screens/password_configuration/reset_password.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(ASizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Headings
            Text(ATexts.forgetPasswordTittle,
                style: Theme.of(context).textTheme.headlineMedium),
            const SizedBox(
              height: ASizes.spaceBtwItems,
            ),
            Text(ATexts.forgetPasswordSubTittle,
                style: Theme.of(context).textTheme.labelMedium),
            const SizedBox(
              height: ASizes.spaceBtwSections * 2,
            ),

            /// Text Fields
            TextFormField(
              decoration: const InputDecoration(
                  labelText: ATexts.email,
                  prefixIcon: Icon(Iconsax.direct_right)),
            ),
            const SizedBox(height: ASizes.spaceBtwSections),

            /// Submit button
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => Get.off(() => const ResetPassword()),
                    child: const Text(ATexts.submit)))
          ],
        ),
      ),
    );
  }
}
