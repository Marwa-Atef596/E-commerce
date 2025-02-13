// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../../../core/app_colors.dart';

class CustomProfileCard extends StatelessWidget {
  const CustomProfileCard({
    super.key,
    this.onTap,
    required this.text,
    required this.iconData,
  });
  final void Function()? onTap;
  final String text;
  final IconData iconData;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        color: AppColors.kPrimaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 8,
            vertical: 13,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                iconData,
                color: AppColors.kWhiteColor,
                size: 30,
              ),
              Text(
                text,
                style: TextStyle(
                  color: AppColors.kWhiteColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Icon(
                Icons.arrow_forward_ios,
                color: AppColors.kWhiteColor,
                size: 25,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
