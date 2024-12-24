import 'package:anyway_axura/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget myFilterButton({required VoidCallback? onPressed}) {
  return Container(
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10), color: Colors.white),
    child: IconButton(
        onPressed: onPressed,
        color: AppColor.themeBlue,
        icon: SvgPicture.asset(
          "assets/icons/filter.svg",
          width: 30,
          height: 30,
          colorFilter: ColorFilter.mode(AppColor.themeBlue, BlendMode.srcIn),
        )),
  );
}
