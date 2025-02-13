// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

import '../app_colors.dart';

AppBar CustomAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: AppColors.kPrimaryColor,
    title: Text(
      'Edit Name',
      style: TextStyle(
        color: AppColors.kWhiteColor,
      ),
    ),
    centerTitle: true,
    leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(
          Icons.arrow_back_ios,
          color: AppColors.kWhiteColor,
        )),
  );
}
