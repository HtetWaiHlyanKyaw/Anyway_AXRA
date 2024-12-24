// import 'package:anyway_create/widgets/my_category_list_tile_2.dart';
// import 'package:anyway_create/widgets/my_location_button.dart';
// import 'package:anyway_create/widgets/my_location_search_bar.dart';
// import 'package:anyway_create/widgets/my_noti_bar.dart';
// import 'package:flutter/material.dart';
// import 'package:anyway_create/widgets/my_filter_button.dart';
// import 'package:anyway_create/widgets/my_search_bar.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:get/get.dart';

import 'package:anyway_axura/constants/app_colors.dart';
import 'package:anyway_axura/widgets/home/my_filter_button.dart';
import 'package:anyway_axura/widgets/home/my_noti_bar.dart';
import 'package:anyway_axura/widgets/home/my_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import 'my_filter_bottom_sheet.dart';

class MyAppBar extends StatelessWidget {
  // final Color themeBlue = const Color.fromRGBO(3, 150, 166, 1);

  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColor.themeBlue,
      elevation: 0,
      flexibleSpace: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, bottom: 8),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 70),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Current Location",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                      Row(
                        children: [
                          SvgPicture.asset(
                            'assets/icons/location.svg',
                            width: 30,
                            height: 30,
                            colorFilter: const ColorFilter.mode(
                                Colors.white, BlendMode.srcIn),
                          ),
                          const SizedBox(width: 4),
                          const Text(
                            "Yangon, Myanmar",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  myNotiButton(),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15.0),
                      child: mySearchBar(label: "Search your event"),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15.0),
                    child: myFilterButton(onPressed: () {
                      Get.bottomSheet(MyFilterBottomSheet());
                    }),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Widget myBottomSheet() {
//   return SingleChildScrollView(
//     child: Container(
//       decoration: const BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.only(
//           topLeft: Radius.circular(20),
//           topRight: Radius.circular(20),
//         ),
//       ),
//       child: Padding(
//         padding: const EdgeInsets.all(20.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           mainAxisAlignment: MainAxisAlignment.start,
//           children: [
//             const Text("Your Location"),
//             Row(
//               children: [
//                 Expanded(
//                   child: Padding(
//                     padding: const EdgeInsets.symmetric(vertical: 15.0),
//                     child: myLocationSearchBar(label: "Yangon, Myanmar"),
//                   ),
//                 ),
//                 const SizedBox(width: 10),
//                 Padding(
//                   padding: const EdgeInsets.symmetric(vertical: 15.0),
//                   child: myLocationButton(onPressed: () {}),
//                 ),
//               ],
//             ),
//             const Padding(
//               padding: EdgeInsets.symmetric(vertical: 10.0),
//               child: Text("Select event type"),
//             ),
//             Row(
//               children: [
//                 myCategoryListTile2(
//                   color: Color.fromARGB(255, 237, 237, 237),
//                   label: "All",
//                   icon: "assets/icons/all.svg",
//                 ),
//                 myCategoryListTile2(
//                   color: Color.fromARGB(255, 237, 237, 237),
//                   label: "Job",
//                   icon: "assets/icons/job.svg",
//                 ),
//                 myCategoryListTile2(
//                   color: Color.fromARGB(255, 237, 237, 237),
//                   label: "Education",
//                   icon: "assets/icons/education.svg",
//                 ),
//               ],
//             ),
//             Padding(
//               padding: const EdgeInsets.symmetric(vertical: 10.0),
//               child: Row(
//                 children: [
//                   myCategoryListTile2(
//                     color: Color.fromARGB(255, 237, 237, 237),
//                     label: "Art",
//                     icon: "assets/icons/art.svg",
//                   ),
//                   myCategoryListTile2(
//                     color: Color.fromARGB(255, 237, 237, 237),
//                     label: "Branding",
//                     icon: "assets/icons/branding.svg",
//                   ),
//                   myCategoryListTile2(
//                     color: Color.fromARGB(255, 237, 237, 237),
//                     label: "Health",
//                     icon: "assets/icons/health.svg",
//                   ),
//                 ],
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(0.0),
//               child: myCategoryListTile2(
//                 color: Color.fromARGB(255, 237, 237, 237),
//                 label: "Music",
//                 icon: "assets/icons/entertainment.svg",
//               ),
//             ),
//             const Text("Meetup Day"),
//             Padding(
//               padding: const EdgeInsets.all(10.0),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   Expanded(
//                     child: Container(
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(10),
//                         color: Colors.grey[200],
//                       ),
//                       child: const Padding(
//                         padding:
//                             EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
//                         child: Center(child: Text("Today")),
//                       ),
//                     ),
//                   ),
//                   SizedBox(width: 10), // Add space between buttons
//                   Expanded(
//                     child: Container(
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(10),
//                         color: Colors.grey[200],
//                       ),
//                       child: const Padding(
//                         padding:
//                             EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
//                         child: Center(child: Text("This week")),
//                       ),
//                     ),
//                   ),
//                   SizedBox(width: 10), // Add space between buttons
//                   Expanded(
//                     child: Container(
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(10),
//                         color: Colors.grey[200],
//                       ),
//                       child: const Padding(
//                         padding:
//                             EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
//                         child: Center(child: Text("Any")),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 10.0),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Expanded(
//                     child: Container(
//                       decoration: BoxDecoration(
//                         border: Border.all(color: AppColor.themeBlue),
//                         borderRadius: BorderRadius.circular(10),
//                       ),
//                       child: Padding(
//                         padding: const EdgeInsets.symmetric(
//                           vertical: 10.0,
//                           horizontal: 40,
//                         ),
//                         child: Text(
//                           "Cancel",
//                           textAlign: TextAlign.center,
//                           style: TextStyle(color: AppColor.themeBlue),
//                         ),
//                       ),
//                     ),
//                   ),
//                   SizedBox(width: 10), // Add space between buttons
//                   Expanded(
//                     child: Container(
//                       decoration: BoxDecoration(
//                         color: AppColor.themeBlue,
//                         borderRadius: BorderRadius.circular(10),
//                       ),
//                       child: Padding(
//                         padding: const EdgeInsets.symmetric(
//                           vertical: 10.0,
//                           horizontal: 40,
//                         ),
//                         child: Text(
//                           "Apply",
//                           textAlign: TextAlign.center,
//                           style: TextStyle(color: Colors.white),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     ),
//   );
// }
// //
