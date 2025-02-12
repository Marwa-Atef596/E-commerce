import 'package:e_commerce/core/custom_button.dart';
import 'package:e_commerce/core/custom_text_field.dart';
import 'package:flutter/material.dart';

class RestPasswordContent extends StatelessWidget {
  const RestPasswordContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextFormField(label: 'Email'),
        SizedBox(
          height: 20,
        ),
        CustomButton(
          onPressed: () {},
          child: Text(
            'Send',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }
}
