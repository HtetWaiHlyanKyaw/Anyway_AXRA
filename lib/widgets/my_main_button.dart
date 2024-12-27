import 'package:anyway_axura/constants/dimension_manager.dart';
import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class MyMainButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  const MyMainButton({super.key, required this.label, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColor.themeBlue,
          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5.0),
          child: Text(
            label,
            style: TextStyle(
                color: Colors.white, fontSize: DimensionManager.font18),
          ),
        ),
      ),
    );
  }
}
