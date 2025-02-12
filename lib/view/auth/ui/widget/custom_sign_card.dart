import 'package:flutter/material.dart';

import '../../../../core/custom_button.dart';


class CustomSignCard extends StatelessWidget {
  const CustomSignCard({
    super.key,
    required this.txt,
    this.onPressed, this.child,
  });
  final String txt;
  final void Function()? onPressed;
  final Widget? child;
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
        CustomButton(onPressed: onPressed,child:child)
      ],
    );
  }
}
