import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget myLocationButton({required VoidCallback? onPressed}) {
  return Container(
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color.fromRGBO(3, 150, 166, 1)),
    child: IconButton(
      onPressed: onPressed,
      color: const Color.fromRGBO(3, 150, 166, 1),
      icon: SvgPicture.asset(
        "assets/icons/gps.svg",
        width: 30,
        height: 30,
        colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
      ),
    ),
  );
}
