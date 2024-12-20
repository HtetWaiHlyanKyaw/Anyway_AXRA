import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../screens/home/home_screen.dart';

enum ViewType { ListView, GridView }

class HomeController extends GetxController {
  RxBool isDarkMode = false.obs;
  RxBool isLoading = false.obs;
  RxString searchQuery = " ".obs;
  var viewType = ViewType.ListView.obs;
  final TextEditingController textEditingController = TextEditingController();

  @override
  void onInit() {
    super.onInit();
    onStartUp();
  }

  Future<void> onStartUp() async {
    _splashLoading();
    _loadDarkMode();
  }

  void _splashLoading() {
    Timer(const Duration(seconds: 5), () {
      Get.off(() => HomeScreen());
    });
  }

  void toggleView() {
    viewType.value = (viewType.value == ViewType.ListView)
        ? ViewType.GridView
        : ViewType.ListView;
  }

  void toggleDarkMode() {
    isDarkMode.toggle();
    update();
    _saveDarkMode();
  }

  void _saveDarkMode() {
    final box = GetStorage();
    box.write('isDarkMode', isDarkMode.value);
  }

  void _loadDarkMode() {
    final box = GetStorage();
    if (box.hasData('isDarkMode')) {
      isDarkMode.value = box.read('isDarkMode') ?? false;
    }
  }
}
