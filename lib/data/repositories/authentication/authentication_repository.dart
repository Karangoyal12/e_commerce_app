import 'package:e_commerce/features/authentication/screens/login/login.dart';
import 'package:e_commerce/features/authentication/screens/onboarding/onboarding.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  /// Variables
  final deviceStorage = GetStorage();
  final _auth = FirebaseAuth.instance;

  /// Called from main.dart on app launch
  @override
  void onReady() {
    FlutterNativeSplash.remove();
    screenRedirect();
  }

  /// Function to show Relevant Screen
  screenRedirect() async {
    // Local storage
    deviceStorage.writeIfNull('IsFirstTime', true);
    deviceStorage.read('IsFirstTime') != true ? Get.offAll(() => const LoginScreen()) : Get.offAll(const OnboardingScreen());
  }

  /* -----------------------Email and Password sign in--------------------*/

  /// Email authentication - sign in


  /// Email authentication - register
  Future<UserCredential> registerWithEmailAndPassword(String email, String password) async {
    try {
      return await _auth.createUserWithEmailAndPassword(email: email, password: password);
    } catch (e) {
      throw 'Something went wrong. Please try again';
    }
  }


  /// ReAuthentication - ReAuthentication user

  /// Email Verification - Mail Verification
/// Email authentication - Forget password

/* --------------------- Federated identity and social sign-in------------*/

  /// Google authentication - google

  /// Facebook authentication - Facebook


/* ----------------------- ./end Federated identity and social sign-in ------*/

  /// [Logout user] - Valid for any authentication

  /// [Delete user] - Remove user Auth and Firestore account



}