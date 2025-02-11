import 'package:flutter/material.dart';

import '../../../core/custom_text_field.dart';
import 'custom_login_text.dart';
import 'custom_sign_card.dart';

class CardContent extends StatelessWidget {
  const CardContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
          SizedBox(
            height: 20,
          ),
          CustomSignCard(
            txt: 'Login',
            onPressed: () {},
          ),
          SizedBox(
            height: 20,
          ),
          CustomSignCard(
            txt: 'Login With Google',
            onPressed: () {},
          ),
          SizedBox(
            height: 20,
          ),
          Row(
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
          )
        ],
      ),
    );
  }
}
