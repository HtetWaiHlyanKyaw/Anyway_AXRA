import 'package:anyway_axura/controllers/navigation_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
// import '../controllers/navigation_controller.dart';

class MyBottomNavigationBar extends StatelessWidget {
  final NavigationController navigationController =
      Get.put(NavigationController());
  final Color themeBlue = const Color.fromRGBO(3, 150, 166, 1);
  MyBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          child: BottomNavigationBar(
            backgroundColor: Colors.white,
            currentIndex: navigationController.selectedIndex.value,
            onTap: (index) {
              navigationController.changeIndex(index);
            },
            elevation: 0,
            showUnselectedLabels: true,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: const Color.fromRGBO(3, 150, 166, 1),
            unselectedItemColor: Colors.grey,
            unselectedFontSize: 15,
            selectedFontSize: 15,
            items: [
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  "assets/icons/navigation_icons/home.svg",
                  width: 20,
                  height: 30,
                  colorFilter: ColorFilter.mode(
                      navigationController.selectedIndex.value == 0
                          ? themeBlue
                          : Colors.grey,
                      BlendMode.srcIn),
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  "assets/icons/navigation_icons/explore.svg",
                  width: 20,
                  height: 30,
                  colorFilter: ColorFilter.mode(
                      navigationController.selectedIndex.value == 1
                          ? themeBlue
                          : Colors.grey,
                      BlendMode.srcIn),
                ),
                label: 'Explore',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  "assets/icons/navigation_icons/ticket.svg",
                  width: 20,
                  height: 30,
                  colorFilter: ColorFilter.mode(
                      navigationController.selectedIndex.value == 2
                          ? themeBlue
                          : Colors.grey,
                      BlendMode.srcIn),
                ),
                label: 'Ticket',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  "assets/icons/navigation_icons/favorite.svg",
                  width: 20,
                  height: 30,
                  colorFilter: ColorFilter.mode(
                      navigationController.selectedIndex.value == 3
                          ? themeBlue
                          : Colors.grey,
                      BlendMode.srcIn),
                ),
                label: 'Favourite',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  "assets/icons/navigation_icons/profile.svg",
                  width: 20,
                  height: 30,
                  colorFilter: ColorFilter.mode(
                      navigationController.selectedIndex.value == 4
                          ? themeBlue
                          : Colors.grey,
                      BlendMode.srcIn),
                ),
                label: 'Profile',
              ),
            ],
          ));
    });
  }
}
