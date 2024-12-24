import 'package:get/get.dart';

class AppBarController extends GetxController {
  var selectedIndex = 0.obs;
  var height = 180.obs;

  void changeIndex(int index) {
    selectedIndex.value = index;
  }

  void changeHeight(int height) {
    this.height.value = height;
  }
}
