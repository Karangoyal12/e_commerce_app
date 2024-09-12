import 'package:e_commerce/data/repositories/authentication/authentication_repository.dart';
import 'package:e_commerce/data/repositories/user/user_repository.dart';
import 'package:e_commerce/features/authentication/screens/signup/verify_email.dart';
import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:e_commerce/utils/popups/ALoaders.dart';
import 'package:e_commerce/utils/popups/full_screen_loader.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import 'network_manager.dart';
import 'user_model.dart';

class SignupController extends GetxController {
  static SignupController get instance => Get.find();

  /// variables
  final privacyPolicy = false.obs; // Observable for privacy policy acceptance
  final hidePassword = true.obs; // Observable for hiding/showing password
  final email = TextEditingController(); // controller for email input
  final lastName = TextEditingController(); // controller for last name input
  final firstName = TextEditingController(); // controller for first name input
  final username = TextEditingController(); // controller for username input
  final phoneNumber = TextEditingController(); // controller for phone number input
  final password = TextEditingController(); // controller for password input
  GlobalKey<FormState> signupFormKey = GlobalKey<
      FormState>(); // Form key for form validation


  /// Signup
  Future<void> signup() async {
    try {
      // Start loading
      AFullScreenLoader.openLoadingDialog(
          'We are processing your information...', AImages.acerlogo);

      // Check internet Connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        // Remove Loader
        AFullScreenLoader.stopLoading();
        return;
      }

      // Form validation
      if (!signupFormKey.currentState!.validate()) {
        // Remove Loader
        AFullScreenLoader.stopLoading();
        return;
      }

      // Privacy Policy Check
      if (!privacyPolicy.value) {
        ALoaders.warningSnackBar(title: 'Accept privacy policy',
            message: 'In order to create account, you must have to read and accept the Privacy Policy and Terms of use.');
        return;
      }

      // Register user in the Firebase Authentication and save user data in the Firebase
      final userCredential = await AuthenticationRepository.instance
          .registerWithEmailAndPassword(
          email.text.trim(), password.text.trim());

      // Save the Authenticated user data in the Firebase Firestore
      final newUser = UserModel(id: userCredential.user!.uid,
          username: username.text.trim(),
          email: email.text.trim(),
          firstName: firstName.text.trim(),
          lastName: lastName.text.trim(),
          phoneNumber: phoneNumber.text.trim(),
          profilePicture: ''
      );

      final userRepository = Get.put(UserRepository());
      await userRepository.saveUserRecord(newUser);

      // Remove Loader
      AFullScreenLoader.stopLoading();

      // Show Success Message
      ALoaders.successSnackBar(title: 'Congratulations', message: 'Your account has been created! Verify email to continue');

      // Move to verify Email Screen
      Get.to(() => const VerifyEmailScreen());

    } catch (e) {

      // Remove Loader
      AFullScreenLoader.stopLoading();

      // Show some Generic Error to the user
      ALoaders.errorSnackBar(title: 'Oh snap!', message: e.toString());
    }
  }
}