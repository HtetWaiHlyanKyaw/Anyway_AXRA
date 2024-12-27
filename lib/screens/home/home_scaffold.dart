// import 'package:anyway_create/widgets/my_nearby_event.dart';
// import 'package:anyway_create/widgets/my_upcoming_event.dart';
import 'package:anyway_axura/widgets/home/my_category_list.dart';
import 'package:anyway_axura/widgets/home/my_nearby_event.dart';
import 'package:anyway_axura/widgets/home/my_upcoming_event.dart';
import 'package:flutter/material.dart';

import '../../constants/dimension_manager.dart';

// import '../widgets/my_category_list.dart';

class HomeScaffold extends StatelessWidget {
  const HomeScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Text(
                "Event Categories",
                style: TextStyle(
                    fontSize: DimensionManager.font18,
                    fontWeight: FontWeight.w500),
              ),
            ),
            // const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: myCategoryList(),
            ),
            // const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Upcoming Events",
                    style: TextStyle(
                        fontSize: DimensionManager.font18,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "See all",
                    style: TextStyle(
                        color: Colors.grey, fontSize: DimensionManager.font14),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Align(
                alignment: Alignment.centerRight,
                child: SizedBox(
                  height: 260,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return myUpComingEvent();
                    },
                  ),
                ),
              ),
            ),
            // const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Nearby Events",
                    style: TextStyle(
                        fontSize: DimensionManager.font18,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "See all",
                    style: TextStyle(
                        color: Colors.grey, fontSize: DimensionManager.font14),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Align(
                alignment: Alignment.centerRight,
                child: SizedBox(
                  height: 280,
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return myNearbyEvent();
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
