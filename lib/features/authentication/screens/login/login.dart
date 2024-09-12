import 'package:e_commerce/common/styles/spacing_styles.dart';
import 'package:e_commerce/features/authentication/screens/login/widgets/login_form.dart';
import 'package:e_commerce/features/authentication/screens/login/widgets/login_header.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../common/widgets/login_signup/form_divider.dart';
import '../../../../common/widgets/login_signup/social_buttons.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: ASpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              /// Logo, Tittle and Sub - Tittle
              const LoginHeader(),
              const LoginForm(),

              /// Divider
              AFormDivider(
                dividerText: ATexts.orSignInWith.capitalize!,
              ),
              const SizedBox(
                height: ASizes.spaceBtwSections / 2,
              ),

              /// Footer
              const ASocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}
