import 'package:anyway_axura/widgets/home_widgets/my_category_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

Widget myCategoryList() {
  return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
    myCategoryListTile(
        color: const Color(0xFFE6ECF3),
        label: "Job",
        icon: SvgPicture.asset(
          "assets/icons/job.svg",
          width: 30,
          height: 30,
        ),
        borderColor: const Color(0xFFD9E2ED)),
    myCategoryListTile(
        color: const Color.fromRGBO(230, 248, 251, 1),
        label: "Education",
        icon: SvgPicture.asset(
          "assets/icons/education.svg",
          width: 30,
          height: 30,
        ),
        borderColor: const Color.fromRGBO(176, 232, 243, 1)),
    myCategoryListTile(
        color: const Color(0xFFF3E8FF),
        label: "Music",
        icon: SvgPicture.asset(
          "assets/icons/entertainment.svg",
          width: 30,
          height: 30,
        ),
        borderColor: const Color(0xFFD8B4FE)),
    Column(
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0xFFD9EFF2),
              border: Border.all(color: const Color(0xFFB0E8F3))),
          child: Padding(
            padding:
                const EdgeInsets.only(left: 8.0, right: 8, top: 3, bottom: 3),
            child: IconButton(
              onPressed: () {
                Get.bottomSheet(myBottomSheet2());
              },
              color: const Color.fromRGBO(3, 150, 166, 1),
              icon: SvgPicture.asset(
                "assets/icons/all.svg",
                width: 30,
                height: 30,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text("All"),
        )
      ],
    )
  ]);
}

Widget myBottomSheet2() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 20),
    decoration: const BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
      ),
    ),
    height: 280,
    child:
        // padding: const EdgeInsets.all(20.0),
        Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          child: Text("All events"),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            myCategoryListTile(
                color: const Color(0xFFE6ECF3),
                label: "Job",
                icon: SvgPicture.asset(
                  "assets/icons/job.svg",
                  width: 30,
                  height: 30,
                ),
                borderColor: const Color(0xFFD9E2ED)),
            myCategoryListTile(
                color: const Color.fromRGBO(230, 248, 251, 1),
                label: "Education",
                icon: SvgPicture.asset(
                  "assets/icons/education.svg",
                  width: 30,
                  height: 30,
                ),
                borderColor: const Color.fromRGBO(176, 232, 243, 1)),
            myCategoryListTile(
                color: const Color(0xFFF3E8FF),
                label: "Music",
                icon: SvgPicture.asset(
                  "assets/icons/entertainment.svg",
                  width: 30,
                  height: 30,
                ),
                borderColor: const Color(0xFFD8B4FE)),
            myCategoryListTile(
                color: const Color(0xFFE9FEF0),
                label: "Health",
                icon: SvgPicture.asset(
                  "assets/icons/health.svg",
                  width: 30,
                  height: 30,
                ),
                borderColor: const Color(0xFFBAFDD1)),
          ],
        ),
        Row(
          children: [
            myCategoryListTile(
                color: const Color(0xFFFFEDD5),
                label: "Art",
                icon: SvgPicture.asset(
                  "assets/icons/art.svg",
                  width: 30,
                  height: 30,
                ),
                borderColor: const Color(0xFFFED7AA)),
            SizedBox(width: 30),
            myCategoryListTile(
                color: const Color(0xFFFFF8E6),
                label: "Branding",
                icon: SvgPicture.asset(
                  "assets/icons/branding.svg",
                  width: 30,
                  height: 30,
                ),
                borderColor: const Color(0xFFFFE9B1)),

            // Container(),
            // Container()
          ],
        )
      ],
    ),
  );
}
