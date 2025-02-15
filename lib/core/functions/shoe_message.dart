// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

import '../app_colors.dart';

ScaffoldFeatureController<SnackBar, SnackBarClosedReason> ShowMessage(BuildContext context,String text) {
    return ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(text),
            backgroundColor: AppColors.kPrimaryColor,
          ),
        );
  }