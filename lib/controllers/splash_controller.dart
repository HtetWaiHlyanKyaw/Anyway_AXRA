import 'dart:async';
import 'package:get/get.dart';

class SplashController extends GetxController {
  var currentPage = 0.obs;
  var timer = 5.obs; // Timer for skip button

  late Timer countdownTimer;

  @override
  void onInit() {
    super.onInit();
    startTimer();
  }

  void startTimer() {
    countdownTimer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (this.timer.value == 0) {
        navigateToSignIn();
      } else {
        this.timer.value--;
      }
    });
  }

  void navigateToNextPage() {
    if (currentPage.value == 0) {
      currentPage.value = 1;
    } else {
      navigateToSignIn();
    }
  }

  void navigateToSignIn() {
    countdownTimer.cancel();
    Get.offNamed('/signin');
  }

  @override
  void onClose() {
    countdownTimer.cancel();
    super.onClose();
  }
}
