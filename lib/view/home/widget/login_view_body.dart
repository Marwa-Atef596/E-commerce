import 'package:e_commerce/core/app_colors.dart';
import 'package:flutter/material.dart';

import '../../../core/custom_text_field.dart';
import 'custom_login_card.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Welcome To Our Market',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        CustomLoginCard(),
      
      ],
    );
  }
}
