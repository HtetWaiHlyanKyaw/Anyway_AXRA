import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget myLocationSearchBar({
  required String label,
}) {
  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(8),
      border: Border.all(color: Colors.grey.shade300),
    ),
    child: TextField(
      decoration: InputDecoration(
        contentPadding:
            const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
        hintText: label,
        hintStyle: const TextStyle(fontSize: 15, color: Colors.grey),
        prefixIcon: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SizedBox(
            height: 15,
            child:
                // padding: const EdgeInsets.all(3.0),
                SvgPicture.asset(
              colorFilter: ColorFilter.mode(Colors.grey, BlendMode.srcIn),
              "assets/icons/location_outlined.svg",
              // height: 20,
              // width: 20,
            ),
          ),
        ),
        border: InputBorder.none,
      ),
    ),
  );
}
