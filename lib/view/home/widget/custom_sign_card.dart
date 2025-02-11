import 'package:flutter/material.dart';

import '../../../core/app_colors.dart';

class CustomSignCard extends StatelessWidget {
  const CustomSignCard({
    super.key,
    required this.txt,
    this.onPressed,
  });
  final String txt;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          txt,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            backgroundColor: AppColors.kPrimaryColor,
          ),
          onPressed: onPressed,
          child: Icon(
            Icons.arrow_forward,
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
