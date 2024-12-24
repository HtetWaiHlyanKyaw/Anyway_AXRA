import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constants/app_colors.dart';

Widget myCategoryListTile(
    {required Color color,
    required String label,
    required SvgPicture icon,
    required Color borderColor}) {
  return Column(
    children: [
      Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: color,
            border: Border.all(color: borderColor)),
        child: Padding(
          padding:
              const EdgeInsets.only(left: 8.0, right: 8, top: 3, bottom: 3),
          child: IconButton(
            onPressed: onPressed,
            color: AppColor.themeBlue,
            icon: icon,
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Text(label),
      )
    ],
  );
}

void onPressed() {}
