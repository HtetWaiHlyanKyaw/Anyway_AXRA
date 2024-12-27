import 'package:anyway_axura/constants/app_colors.dart';
import 'package:anyway_axura/constants/dimension_manager.dart';
import 'package:anyway_axura/widgets/home/my_filled_button.dart';
import 'package:avatar_stack/avatar_stack.dart';
import 'package:avatar_stack/positions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../screens/event/event_detail_screen.dart';

Widget myNearbyEvent() {
  return GestureDetector(
    onTap: () {
      Get.to(() => const EventDetailScreen());
    },
    child: Card(
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Colors.white,
        ),
        child: Row(
          children: [
            Stack(
              children: [
                Flexible(
                  flex: 1,
                  child: Image.asset(
                    "assets/images/event2.png",
                    fit: BoxFit.fill,
                  ),
                ),
                Positioned(
                  child: Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8),
                          bottomRight: Radius.circular(8)),
                      color: Color(0xFFFFEDD5),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12.0, vertical: 2),
                      child: Text(
                        "Art",
                        style: TextStyle(
                            color: const Color(0xFFFCA962),
                            fontSize: DimensionManager.font12),
                      ),
                    ),
                  ),
                )
              ],
            ),
            Flexible(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      "Job Event Title",
                      style: TextStyle(fontSize: DimensionManager.font16),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5.0),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: SvgPicture.asset(
                            "assets/icons/location_outlined.svg",
                            width: 20,
                            height: 20,
                            colorFilter: ColorFilter.mode(
                                AppColor.themeBlue, BlendMode.srcIn),
                          ),
                        ),
                        Text(
                          "Novotel Hotel Yangon, Myanmar",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: DimensionManager.font12),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5.0),
                    child: Row(children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: SvgPicture.asset(
                          "assets/icons/calendar.svg",
                          width: 20,
                          height: 20,
                          colorFilter: ColorFilter.mode(
                              AppColor.themeBlue, BlendMode.srcIn),
                        ),
                      ),
                      Text(
                        "Nov 17 - (10:00 AM-3:00 PM)",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: DimensionManager.font12),
                      ),
                    ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 100,
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: AvatarStack(
                              settings: RestrictedAmountPositions(
                                minCoverage: 0.5,
                              ),
                              height: 20,
                              avatars: [
                                for (var n = 0; n < 15; n++)
                                  NetworkImage(
                                    'https://i.pravatar.cc/150?img=$n',
                                  ),
                              ],
                            ),
                          ),
                        ),
                        // const Text(
                        //   "Members Joined",
                        //   style: TextStyle(fontSize: 10, color: Colors.grey),
                        // ),
                        // MaterialButton(onPressed: onPressed)
                        myFilledButton(label: "Join Now", onPressed: onPressed)
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

void onPressed() {}
