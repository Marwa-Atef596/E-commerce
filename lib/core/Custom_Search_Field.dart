// ignore_for_file: file_names

import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'custom_text_field.dart';

class CustomSearchField extends StatelessWidget {
  const CustomSearchField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      label: 'Search in Market',
      SUFFIX: ElevatedButton.icon(
        onPressed: () {},
        label: Icon(
          Icons.search,
          size: 20,
        ),
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            backgroundColor: AppColors.kPrimaryColor,
            iconColor: AppColors.kWhiteColor),
      ),
    );
  }
}
