import 'package:anyway_axura/constants/app_colors.dart';
import 'package:anyway_axura/widgets/home/my_category_bottom_sheet.dart';
import 'package:anyway_axura/widgets/home/my_category_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../constants/dimension_manager.dart';

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
                Get.bottomSheet(const MyCategoryBottomSheet());
              },
              color: AppColor.themeBlue,
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
          child: Text(
            "All",
            style: TextStyle(fontSize: DimensionManager.font14),
          ),
        )
      ],
    )
  ]);
}
