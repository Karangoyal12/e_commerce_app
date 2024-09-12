import 'package:e_commerce/common/widgets/login_signup/form_divider.dart';
import 'package:e_commerce/common/widgets/login_signup/social_buttons.dart';
import 'package:e_commerce/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(ASizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Tittle
              Text(
                ATexts.signupTittle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: ASizes.spaceBtwSections,
              ),

              /// Form
              const ASignupForm(),
              const SizedBox(
                height: ASizes.spaceBtwSections / 2,
              ),

              /// Divider
              AFormDivider(dividerText: ATexts.orSignUpWith.capitalize!),
              const SizedBox(
                height: ASizes.spaceBtwSections / 2,
              ),

              /// Footer
              const ASocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
