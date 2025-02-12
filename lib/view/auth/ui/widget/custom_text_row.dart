
import 'package:flutter/material.dart';

import 'custom_login_text.dart';

class CustomTextRow extends StatelessWidget {
  const CustomTextRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Already have account ? ',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        CustomLoginText(text: 'Sign Up')
      ],
    );
  }
}