import 'package:e_commerce/features/authentication/screens/login/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  /// Variables
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  /// update current index when page scroll
  void updatePageIndicator(index) => currentPageIndex.value = index;

  /// Jump to the specific dot selected page
  void dotNavigationClick(index){
    currentPageIndex.value = index;
    pageController.jumpToPage(index);
  }

  /// update current index and jump to next page
  void nextPage(){
    if(currentPageIndex.value == 2){
      final storage = GetStorage();
      storage.write('IsFirstTime', false);
      Get.offAll(const LoginScreen());
    }
    else{
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }

  /// update current index and jump to the last page
  void skipPage(){
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);
  }
}