import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:nchvbg/src/frontend/screens/onboarding/request_access_screen.dart';

class OnboardingController extends GetxController {
  RxInt currentPage = 0.obs;

  gotoRequestAccessScreen() {
    Get.to(() => const RequestAccessScreen());
  }
}
