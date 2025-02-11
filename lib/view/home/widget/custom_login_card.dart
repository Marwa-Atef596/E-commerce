import 'package:flutter/material.dart';

import '../../../core/app_colors.dart';
import '../../../core/custom_text_field.dart';

class CustomLoginCard extends StatelessWidget {
  const CustomLoginCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: EdgeInsets.all(16),
        color: AppColors.kWhiteColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
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
              ),
              SizedBox(
                height: 8,
              ),
              Align(
                alignment: AlignmentDirectional.centerEnd,
                child: CustomLoginText(
                  text: 'Forget Password',
                ),
              ),
            ],
          ),
        ));
  }
}

class CustomLoginText extends StatelessWidget {
  const CustomLoginText({
    super.key,
    required this.text, this.onTap,
  });
  final String text;
 final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:onTap ,
      child: Text(
        text,
        style: TextStyle(
          color: AppColors.kPrimaryColor,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
