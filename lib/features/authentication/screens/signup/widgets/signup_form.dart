import 'package:e_commerce/features/authentication/controllers.onboarding/signup/signup_controller.dart';
import 'package:e_commerce/features/authentication/screens/signup/widgets/terms_conditions_checkbox.dart';
import 'package:e_commerce/utils/validators/validation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';

class ASignupForm extends StatelessWidget {
  const ASignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignupController());

    return Form(
      key: controller.signupFormKey,
      child: Column(
        children: [
          /// First and Last Name
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  controller: controller.firstName,
                  validator: (value) =>
                      AValidator.validateEmptyText('First name', value),
                  expands: false,
                  decoration: const InputDecoration(
                      labelText: ATexts.firstName,
                      prefixIcon: Icon(Iconsax.user)),
                ),
              ),
              const SizedBox(
                width: ASizes.spaceBtwInputFields,
              ),
              Expanded(
                child: TextFormField(
                  controller: controller.lastName,
                  validator: (value) =>
                      AValidator.validateEmptyText('Last name', value),
                  expands: false,
                  decoration: const InputDecoration(
                      labelText: ATexts.lastName,
                      prefixIcon: Icon(Iconsax.user)),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: ASizes.spaceBtwInputFields,
          ),

          /// Username
          TextFormField(
            controller: controller.username,
            validator: (value) =>
                AValidator.validateEmptyText('Username', value),
            expands: false,
            decoration: const InputDecoration(
                labelText: ATexts.username,
                prefixIcon: Icon(Iconsax.user_edit)),
          ),
          const SizedBox(
            height: ASizes.spaceBtwInputFields,
          ),

          /// Email
          TextFormField(
            controller: controller.email,
            validator: (value) => AValidator.validateEmail(value),
            expands: false,
            decoration: const InputDecoration(
                labelText: ATexts.email, prefixIcon: Icon(Iconsax.direct)),
          ),
          const SizedBox(
            height: ASizes.spaceBtwInputFields,
          ),

          /// Phone number
          TextFormField(
            controller: controller.phoneNumber,
            validator: (value) => AValidator.validatePhoneNumber(value),
            expands: false,
            decoration: const InputDecoration(
                labelText: ATexts.phoneNo, prefixIcon: Icon(Iconsax.call)),
          ),
          const SizedBox(
            height: ASizes.spaceBtwInputFields,
          ),

          /// password
          Obx(
            () => TextFormField(
              controller: controller.password,
              validator: (value) => AValidator.validatePassword(value),
              obscureText: controller.hidePassword.value,
              decoration: InputDecoration(
                  labelText: ATexts.password,
                  prefixIcon: const Icon(Iconsax.password_check),
                  suffixIcon: IconButton(
                      onPressed: () => controller.hidePassword.value =
                          !controller.hidePassword.value,
                      icon: Icon(controller.hidePassword.value ? Iconsax.eye_slash : Iconsax.eye))),
            ),
          ),
          const SizedBox(
            height: ASizes.spaceBtwInputFields,
          ),

          /// Terms and conditions checkbox
          const ATermsAndConditionCheckbox(),
          const SizedBox(
            height: ASizes.spaceBtwSections / 2,
          ),

          /// Sign up Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () => controller.signup(),
                child: const Text(ATexts.createAccount)),
          )
        ],
      ),
    );
  }
}
