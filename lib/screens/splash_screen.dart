import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/splash_controller.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final SplashController controller = Get.put(SplashController());

    return Scaffold(
      body: Obx(() {
        return Stack(
          children: [
            PageView(
              physics: const NeverScrollableScrollPhysics(),
              controller: PageController(initialPage: controller.currentPage.value),
              children: [
                buildSplashPage(
                  'assets/images/Splash 1.png',
                  "Earn Points & Rewards",
                  "Collect points at every event and redeem them for exclusive tickets and discounts.",
                ),
                buildSplashPage(
                  'assets/images/Splash 2.png',
                  "See what’s happening in your area",
                  "Book tickets quickly and enjoy seamless access to your favorite events.",
                ),
              ],
            ),
            Positioned(
              top: 40,
              right: 20,
              child: TextButton(
                onPressed: controller.navigateToSignIn,
                child: Text(
                  "Skip (${controller.timer.value})",
                  style: const TextStyle(fontSize: 16, color: Colors.blue),
                ),
              ),
            ),
          ],
        );
      }),
    );
  }

  Widget buildSplashPage(String imagePath, String title, String description) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(imagePath, width: 200, height: 200),
        const SizedBox(height: 20),
        Text(
          title,
          style: const TextStyle(
              fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Text(
            description,
            style: const TextStyle(fontSize: 16, color: Colors.grey),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
