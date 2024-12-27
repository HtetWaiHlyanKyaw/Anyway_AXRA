// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// import '../../constants/dimension_manager.dart';
// import '../../controllers/home_controller.dart';
// import '../../widgets/text_widget.dart';
// import 'search_screen.dart';

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final HomeController controller = Get.put(HomeController());
//     return WillPopScope(
//       onWillPop: () => showExitPopup(context),
//       child: Scaffold(
//           appBar: AppBar(
//             automaticallyImplyLeading: false,
//             elevation: 0,
//             centerTitle: true,
//             title: BigText(
//               text: 'Burmese Chef',
//               fontSize: DimensionManager.font16,
//             ),
//             leading: Builder(
//               builder: (context) => IconButton(
//                 icon: Icon(Icons.menu),
//                 onPressed: () {
//                   Scaffold.of(context).openDrawer();
//                 },
//               ),
//             ),
//             actions: [
//               // Obx(() => IconButton(
//               //     onPressed: controller.toggleDarkMode,
//               //     icon: controller.isDarkMode.value
//               //         ? Icon(
//               //             Icons.dark_mode,
//               //             size: DimensionManager.icon24,
//               //           )
//               //         : Icon(
//               //             Icons.light_mode,
//               //             size: DimensionManager.icon24,
//               //           ))),
//               IconButton(
//                   onPressed: () {
//                     Get.to(() => const SearchScreen());
//                   },
//                   icon: Icon(
//                     Icons.search,
//                     size: DimensionManager.icon24,
//                   ))
//               // IconButton(
//               //   icon: Icon(Icons.view_module),
//               //   onPressed: () => controller.toggleView(),
//               // )
//             ],
//           ),
//           drawer: AppDrawer(),
//           body: SingleChildScrollView(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Obx(() => controller.isLoading.value
//                     ? const Center(
//                         child: CircularProgressIndicator(),
//                       )
//                     : buildListView(controller, context))
//                 // Obx(
//                 //   () {
//                 //     return (controller.viewType.value == ViewType.ListView)
//                 //         ? _buildListView(controller)
//                 //         : _buildGridView(controller);
//                 //   },
//                 // ),
//               ],
//             ),
//           )),
//     );
//   }
// }

// import 'package:anyway_create/controllers/navigation_controller.dart';
// import 'package:anyway_create/screens/explore_screen.dart';
// import 'package:anyway_create/screens/favorite_screen.dart';
// import 'package:anyway_create/screens/home_screen.dart';
// import 'package:anyway_create/screens/profile_screen.dart';
// import 'package:anyway_create/screens/ticket_screen.dart';
// import 'package:anyway_create/widgets/my_app_bar.dart';
// import 'package:anyway_create/widgets/my_bottom_navigation_bar.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// import '../controllers/navigation_controller.dart';

import 'package:anyway_axura/controllers/app_bar_controller.dart';
import 'package:anyway_axura/screens/home/home_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/navigation_controller.dart';
import '../../widgets/home/my_app_bar.dart';
import '../../widgets/home/my_bottom_navigation_bar.dart';

List<Widget> _pages = const [
  HomeScaffold(),
];

// List<Widget> _appBars = const [
//   MyAppBar(),
// ];

class HomeScreen extends StatelessWidget {
  final NavigationController navigationController =
      Get.put(NavigationController());

  final AppBarController appBarController = Get.put(AppBarController());

  HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 248, 248, 248),
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(180),
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(25),
              bottomRight: Radius.circular(25),
            ),
            child: MyAppBar(),
          ),
        ),
        body: Obx(() {
          return IndexedStack(
            index: navigationController.selectedIndex.value,
            children: _pages,
          );
        }),
        bottomNavigationBar: MyBottomNavigationBar());
  }
}
