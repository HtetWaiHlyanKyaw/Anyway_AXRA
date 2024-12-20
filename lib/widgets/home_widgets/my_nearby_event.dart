import 'package:anyway_axura/widgets/home_widgets/my_filled_button.dart';
import 'package:avatar_stack/avatar_stack.dart';
import 'package:avatar_stack/positions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Widget myNearbyEvent() {
  return Card(
    child: Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: Colors.white,
      ),
      child: Row(
        children: [
          Stack(
            children: [
              Flexible(
                flex: 1,
                child: Image.asset(
                  "assets/images/event2.png",
                  fit: BoxFit.fill,
                ),
              ),
              Positioned(
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8),
                        bottomRight: Radius.circular(8)),
                    color: Color(0xFFFFEDD5),
                  ),
                  child: const Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 12.0, vertical: 2),
                    child: Text(
                      "Art",
                      style: TextStyle(color: Color(0xFFFCA962), fontSize: 12),
                    ),
                  ),
                ),
              )
            ],
          ),
          Flexible(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    "Job Event Title",
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: SvgPicture.asset(
                          "assets/icons/location_outlined.svg",
                          width: 20,
                          height: 20,
                          colorFilter: const ColorFilter.mode(
                              Color.fromRGBO(3, 150, 166, 1), BlendMode.srcIn),
                        ),
                      ),
                      const Text(
                        "Novotel Hotel Yangon, Myanmar",
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: Row(children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: SvgPicture.asset(
                        "assets/icons/calendar.svg",
                        width: 20,
                        height: 20,
                        colorFilter: const ColorFilter.mode(
                            Color.fromRGBO(3, 150, 166, 1), BlendMode.srcIn),
                      ),
                    ),
                    const Text(
                      "Nov 17 - (10:00 AM-3:00 PM)",
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                  ]),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 100,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: AvatarStack(
                            settings: RestrictedAmountPositions(
                              minCoverage: 0.5,
                            ),
                            height: 20,
                            avatars: [
                              for (var n = 0; n < 15; n++)
                                NetworkImage(
                                  'https://i.pravatar.cc/150?img=$n',
                                ),
                            ],
                          ),
                        ),
                      ),
                      // const Text(
                      //   "Members Joined",
                      //   style: TextStyle(fontSize: 10, color: Colors.grey),
                      // ),
                      // MaterialButton(onPressed: onPressed)
                      myFilledButton(label: "Join Now", onPressed: onPressed)
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

void onPressed() {}
