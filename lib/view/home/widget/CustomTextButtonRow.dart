// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../../../core/app_colors.dart';
import '../../../core/custom_button.dart';

class CustomTextButtonRow extends StatelessWidget {
  const CustomTextButtonRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            Text(
              '223 LE',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '290 LE',
              style: TextStyle(
                  decoration: TextDecoration.lineThrough,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: AppColors.kGreyColor),
            ),
          ],
        ),
        CustomButton(
          onPressed: () {},
          child: Text(
            'Buy',
            style: TextStyle(color: AppColors.kWhiteColor),
          ),
        )
      ],
    );
  }
}
