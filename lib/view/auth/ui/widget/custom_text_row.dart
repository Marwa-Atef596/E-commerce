import 'package:flutter/material.dart';

import 'custom_login_text.dart';

class CustomTextRow extends StatelessWidget {
  const CustomTextRow({
    super.key, required this.text, this.onTap, required this.title,
  });
  final String title;
  final String text;
 final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        CustomLoginText(
          text: text,
          onTap: onTap
        )
      ],
    );
  }
}
