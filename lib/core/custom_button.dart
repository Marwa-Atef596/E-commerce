import 'package:flutter/material.dart';

import 'app_colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.onPressed, this.child,
  });

  final void Function()? onPressed;
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        backgroundColor: AppColors.kPrimaryColor,
      ),
      onPressed: onPressed,
      child: child
    );
  }
}
