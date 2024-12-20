import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget myFilterButton({required VoidCallback? onPressed}) {
  return Container(
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10), color: Colors.white),
    child: IconButton(
        onPressed: onPressed,
        color: const Color.fromRGBO(3, 150, 166, 1),
        icon: SvgPicture.asset(
          "assets/icons/filter.svg",
          width: 30,
          height: 30,
          colorFilter: const ColorFilter.mode(
              Color.fromRGBO(3, 150, 166, 1), BlendMode.srcIn),
        )),
  );
}
