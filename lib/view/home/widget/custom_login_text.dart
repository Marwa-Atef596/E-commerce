import 'package:flutter/material.dart';

import '../../../core/app_colors.dart';

class CustomLoginText extends StatelessWidget {
  const CustomLoginText({
    super.key,
    required this.text,
    this.onTap,
  });
  final String text;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Text(
        text,
        style: TextStyle(
          color: AppColors.kPrimaryColor,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
