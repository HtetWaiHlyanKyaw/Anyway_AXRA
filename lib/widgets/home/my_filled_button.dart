import 'package:flutter/material.dart';

import '../../constants/app_colors.dart';

Widget myFilledButton(
    {required String label,
    // required Color color,
    required VoidCallback? onPressed}) {
  return
      // FilledButton(
      //   onPressed: () {},
      //   style: FilledButton.styleFrom(
      //     backgroundColor: const Color.fromRGBO(3, 150, 166, 1),
      //     shape: RoundedRectangleBorder(
      //       borderRadius: BorderRadius.circular(10),
      //     ),
      //     padding: const EdgeInsets.symmetric(horizontal: 9),
      //   ),
      //   child: Text(
      //     label,
      //     style: const TextStyle(
      //       color: Colors.white,
      //       fontWeight: FontWeight.bold,
      //       fontSize: 10,
      //     ),
      //   ),
      // );
      Container(
          decoration: BoxDecoration(
              color: AppColor.themeBlue,
              borderRadius: BorderRadius.all(Radius.circular(6))),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 3.0, horizontal: 8),
            child: Text(
              "Join Now",
              style: TextStyle(color: Colors.white, fontSize: 14),
            ),
          ));
  // Container();
}
