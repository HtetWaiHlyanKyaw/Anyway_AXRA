import 'package:anyway_axura/constants/dimension_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget myCategoryListTile2({
  required Color color,
  required String label,
  required String icon,
}) {
  return Expanded(
    child: Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: color),
        // border: Border.all(color: borderColor)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(icon, width: 30, height: 30),
              const SizedBox(
                width: 4,
              ),
              Text(
                label,
                style: TextStyle(
                    fontSize: DimensionManager.font12, color: Colors.grey),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

void onPressed() {}
