import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constants/app_colors.dart';

Widget myLocationButton({required VoidCallback? onPressed}) {
  return Container(
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10), color: AppColor.themeBlue),
    child: IconButton(
      onPressed: onPressed,
      color: AppColor.themeBlue,
      icon: SvgPicture.asset(
        "assets/icons/gps.svg",
        width: 30,
        height: 30,
        colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
      ),
    ),
  );
}
