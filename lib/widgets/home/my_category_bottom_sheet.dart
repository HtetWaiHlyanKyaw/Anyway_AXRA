import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'my_category_list_tile.dart';

class MyCategoryBottomSheet extends StatelessWidget {
  const MyCategoryBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      height: 280,
      child:
          // padding: const EdgeInsets.all(20.0),
          Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: Text("All events"),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              myCategoryListTile(
                  color: const Color(0xFFE6ECF3),
                  label: "Job",
                  icon: SvgPicture.asset(
                    "assets/icons/job.svg",
                    width: 30,
                    height: 30,
                  ),
                  borderColor: const Color(0xFFD9E2ED)),
              myCategoryListTile(
                  color: const Color.fromRGBO(230, 248, 251, 1),
                  label: "Education",
                  icon: SvgPicture.asset(
                    "assets/icons/education.svg",
                    width: 30,
                    height: 30,
                  ),
                  borderColor: const Color.fromRGBO(176, 232, 243, 1)),
              myCategoryListTile(
                  color: const Color(0xFFF3E8FF),
                  label: "Music",
                  icon: SvgPicture.asset(
                    "assets/icons/entertainment.svg",
                    width: 30,
                    height: 30,
                  ),
                  borderColor: const Color(0xFFD8B4FE)),
              myCategoryListTile(
                  color: const Color(0xFFE9FEF0),
                  label: "Health",
                  icon: SvgPicture.asset(
                    "assets/icons/health.svg",
                    width: 30,
                    height: 30,
                  ),
                  borderColor: const Color(0xFFBAFDD1)),
            ],
          ),
          Row(
            children: [
              myCategoryListTile(
                  color: const Color(0xFFFFEDD5),
                  label: "Art",
                  icon: SvgPicture.asset(
                    "assets/icons/art.svg",
                    width: 30,
                    height: 30,
                  ),
                  borderColor: const Color(0xFFFED7AA)),
              SizedBox(width: 30),
              myCategoryListTile(
                  color: const Color(0xFFFFF8E6),
                  label: "Branding",
                  icon: SvgPicture.asset(
                    "assets/icons/branding.svg",
                    width: 30,
                    height: 30,
                  ),
                  borderColor: const Color(0xFFFFE9B1)),

              // Container(),
              // Container()
            ],
          )
        ],
      ),
    );
  }
}
