// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

import '../app_colors.dart';

AppBar CustomAppBar(BuildContext context,String text) {
  
  return AppBar(
    backgroundColor: AppColors.kPrimaryColor,
    title: Text(
      text,
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
