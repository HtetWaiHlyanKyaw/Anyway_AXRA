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