import 'package:flutter/material.dart';

import '../../../../core/app_colors.dart';

class CustomLoginCard extends StatelessWidget {
  const CustomLoginCard({
    super.key,
    this.child,
  });
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return Card(
        margin: EdgeInsets.all(16),
        color: AppColors.kWhiteColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: child,
        ));
  }
}
