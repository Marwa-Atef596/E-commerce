// ignore_for_file: non_constant_identifier_names

import 'package:e_commerce/core/app_colors.dart';
import 'package:flutter/material.dart';

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

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.label,
    this.SUFFIX,
    this.obscureText = false,
  });
  final String label;
  final Widget? SUFFIX;
  final bool obscureText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      obscuringCharacter: '*',
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'This Field is Required';
        }
        return null;
      },
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          label: Text(
            label,
          ),
          suffixIcon: SUFFIX,
          border: OutlineBorder(),
          enabledBorder: OutlineBorder(),
          focusedBorder: OutlineBorder()),
    );
  }

  OutlineInputBorder OutlineBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide(
        color: AppColors.kBordersideColor,
        width: 2,
      ),
    );
  }
}
