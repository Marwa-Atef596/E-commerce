import 'package:e_commerce/view/auth/ui/login_view.dart';
import 'package:flutter/material.dart';

import '../../../../core/custom_text_field.dart';
import '../../../../core/functions/navigate_to.dart';
import 'custom_sign_card.dart';
import 'custom_text_row.dart';

class CardSignUpContent extends StatelessWidget {
  const CardSignUpContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CustomTextFormField(label: 'Name'),
          SizedBox(
            height: 20,
          ),
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
          SizedBox(
            height: 20,
          ),
          CustomSignCard(
            txt: 'Sign Up',
            onPressed: () {},
            child: Icon(
              Icons.arrow_forward,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          CustomSignCard(
            txt: 'Sign Up With Google',
            onPressed: () {},
            child: Icon(
              Icons.arrow_forward,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          CustomTextRow(
            title: 'Already have account ? ',
            text: 'Login',
            onTap: () {
              navigateTo(context, LoginView());
            },
          )
        ],
      ),
    );
  }
}
