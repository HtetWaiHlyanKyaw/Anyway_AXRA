import 'package:anyway_axura/widgets/home/my_filled_button.dart';
import 'package:avatar_stack/avatar_stack.dart';
import 'package:avatar_stack/positions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../constants/app_colors.dart';
import '../../constants/dimension_manager.dart';
import '../../screens/event/event_detail_screen.dart';

Widget myUpComingEvent() {
  return GestureDetector(
    onTap: () {
      Get.to(() => const EventDetailScreen());
    },
    child: Card(
      color: Colors.white,
      child: Container(
          width: 250,
          // margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                flex: 1,
                child: Image.asset(
                  "assets/images/event1.png",
                  fit: BoxFit.cover,
                ),
              ),
              Flexible(
                flex: 1,
                child: Container(
                  margin: const EdgeInsets.all(8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Job Event Title",
                        style: TextStyle(fontSize: DimensionManager.font16),
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
                            Text(
                              "Novotel Hotel Yangon, Myanmar",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: DimensionManager.font14),
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
                          Text(
                            "Nov 17 - (10:00 AM-3:00 PM)",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: DimensionManager.font14),
                          ),
                        ]),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 100,
                              child: AvatarStack(
                                settings: RestrictedAmountPositions(
                                  minCoverage: 0.5,
                                ),
                                height: 22,
                                avatars: [
                                  for (var n = 0; n < 15; n++)
                                    NetworkImage(
                                      'https://i.pravatar.cc/150?img=$n',
                                    ),
                                ],
                              ),
                            ),
                            // const Text(
                            //   "Members Joined",
                            //   style: TextStyle(fontSize: 10, color: Colors.grey),
                            // ),
                            // MaterialButton(onPressed: onPressed)
                            myFilledButton(
                                label: "Join Now", onPressed: onPressed)
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          )),
    ),
  );
}

onPressed() {}
