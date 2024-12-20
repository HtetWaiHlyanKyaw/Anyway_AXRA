import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget myNotiButton() {
  return Badge(
    label: const Text("5"),
    backgroundColor: Colors.blue,
    child: Material(
      color: Colors.white,
      shape: const CircleBorder(),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SvgPicture.asset(
          "assets/icons/notification.svg",
          width: 25,
          height: 25,
        ),
      ),
    ),
  );
}

void onPressed() {}
