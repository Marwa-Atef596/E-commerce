
// ignore_for_file: non_constant_identifier_names

import 'package:e_commerce/core/app_colors.dart';
import 'package:flutter/material.dart';

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
