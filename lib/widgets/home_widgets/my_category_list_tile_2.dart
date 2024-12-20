import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget myCategoryListTile2({
  required Color color,
  required String label,
  required String icon,
}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 8.0),
    child: Container(
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(10), color: color),
      // border: Border.all(color: borderColor)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SvgPicture.asset(icon, width: 30, height: 30),
            SizedBox(
              width: 2,
            ),
            Text(
              label,
              style: const TextStyle(fontSize: 12, color: Colors.grey),
            ),
          ],
        ),
      ),
    ),
  );
}

void onPressed() {}
