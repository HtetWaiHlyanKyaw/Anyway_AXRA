import 'package:anyway_axura/controllers/home_controller.dart';
import 'package:anyway_axura/screens/event/event_detail_screen.dart';
import 'package:anyway_axura/screens/home/register_screen.dart';
import 'package:anyway_axura/screens/home/signin_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'screens/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Future.delayed(const Duration(seconds: 1));
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  await GetStorage.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeController controller = Get.put(HomeController());
    return Obx(
      () => GetMaterialApp(
        theme: controller.isDarkMode.value
            ? ThemeData.dark(useMaterial3: true)
            : ThemeData.light(useMaterial3: true),
        debugShowCheckedModeBanner: false,
        initialRoute: '/splash',
        getPages: [
          GetPage(name: '/splash', page: () => const SplashScreen()),
          GetPage(name: '/signin', page: () => const SignInScreen()),
          GetPage(name: '/register', page: () => RegisterScreen()),
          GetPage(name: '/event_detail', page: () => const EventDetailScreen()),
        ],
      ),
    );
  }
}
