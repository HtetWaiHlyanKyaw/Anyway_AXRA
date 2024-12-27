import 'package:anyway_axura/constants/app_colors.dart';
import 'package:anyway_axura/widgets/event/my_back_button.dart';
import 'package:anyway_axura/widgets/home/my_noti_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants/dimension_manager.dart';
import '../../widgets/my_main_button.dart';

class EventDetailScreen extends StatelessWidget {
  const EventDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(25),
            bottomRight: Radius.circular(25),
          ),
        ),
        title: Text(
          "Event",
          style:
              TextStyle(color: Colors.white, fontSize: DimensionManager.font18),
        ),
        centerTitle: true,
        backgroundColor: AppColor.themeBlue,
        leading: myBackButton(),
        actions: [
          Padding(
            child: myNotiButton(),
            padding: const EdgeInsets.only(right: 15),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Stack(
                children: [
                  Image.asset(
                    "assets/images/event3.png",
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.favorite_outline,
                        color: Colors.grey,
                      ),
                    ),
                    right: 10,
                    top: 10,
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Container(
                margin: const EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Job Event Title",
                      style: TextStyle(fontSize: DimensionManager.font18),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5.0),
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            "assets/icons/location_outlined.svg",
                            width: 20,
                            height: 20,
                            colorFilter: ColorFilter.mode(
                                AppColor.themeBlue, BlendMode.srcIn),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 5.0),
                            child: Text(
                              "Novotel Hotel Yangon, Myanmar",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: DimensionManager.font14),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5.0),
                      child: Row(children: [
                        SvgPicture.asset(
                          "assets/icons/calendar.svg",
                          width: 20,
                          height: 20,
                          colorFilter: ColorFilter.mode(
                              AppColor.themeBlue, BlendMode.srcIn),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5.0),
                          child: Text(
                            "Nov 17 - (10:00 AM-3:00 PM)",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: DimensionManager.font14),
                          ),
                        ),
                      ]),
                    ),
                    const SizedBox(height: 10),
                    Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Colors.blue[50],
                              ),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 5),
                              child: Text(
                                "Free",
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: DimensionManager.font12),
                              ),
                            ),
                            const SizedBox(width: 10),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Colors.orange[50],
                              ),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 5),
                              child: Text(
                                "Art",
                                style: TextStyle(
                                    color: Colors.orange,
                                    fontSize: DimensionManager.font12),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: Text(
                        "About Event",
                        style: TextStyle(fontSize: DimensionManager.font16),
                      ),
                    ),
                    Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. "
                      "Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. "
                      "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. "
                      "Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. "
                      "Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: DimensionManager.font14),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: Text(
                        "Location",
                        style: TextStyle(fontSize: DimensionManager.font16),
                      ),
                    ),
                    Container(
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey[100],
                      ),
                    ),
                    const SizedBox(height: 10),
                    MyMainButton(
                      label: "Continue",
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
