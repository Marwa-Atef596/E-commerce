import 'package:e_commerce/core/app_colors.dart';
import 'package:flutter/material.dart';

import '../../../core/custom_text_field.dart';

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
        Card(
            margin: EdgeInsets.all(16),
            color: AppColors.kWhiteColor,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                children: [
                  CustomTextFormField(label: 'Email'),
                  SizedBox(
                    height: 20,
                  ),
                  CustomTextFormField(
                    label: 'Password',
                    SUFFIX: Icon(Icons.visibility_off),
                    obscureText: true,
                  )
                ],
              ),
            ))
      ],
    );
  }
}
