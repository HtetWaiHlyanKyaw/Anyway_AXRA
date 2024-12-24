import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget mySearchBar({
  required String label,
}) {
  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(8),
    ),
    child: TextField(
      decoration: InputDecoration(
        contentPadding:
            const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
        hintText: label,
        hintStyle: const TextStyle(fontSize: 15, color: Colors.grey),
        prefixIcon: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            margin: const EdgeInsets.only(left: 10),
            height: 15,
            child: Padding(
              padding: const EdgeInsets.all(3.0),
              child: SvgPicture.asset(
                "assets/icons/magnifier.svg",
                // height: 20,
                // width: 20,
              ),
            ),
          ),
        ),
        border: InputBorder.none,
      ),
    ),
  );
}
