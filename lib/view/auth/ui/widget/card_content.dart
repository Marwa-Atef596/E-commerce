import 'package:e_commerce/view/auth/ui/forget_view.dart';
import 'package:e_commerce/view/auth/ui/sign_up_view.dart';
import 'package:e_commerce/view/nav_bar/ui/main_home_view.dart';
import 'package:flutter/material.dart';

import '../../../../core/custom_text_field.dart';
import '../../../../core/functions/navigate_to.dart';
import 'custom_login_text.dart';
import 'custom_sign_card.dart';
import 'custom_text_row.dart';

class CardLoginContent extends StatelessWidget {
  const CardLoginContent({
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
              onTap: () {
                navigateTo(context, ForgetView());
              },
              text: 'Forget Password',
            ),
          ),
          SizedBox(
            height: 20,
          ),
          CustomSignCard(
            txt: 'Login',
            onPressed: () {
              navigateTo(context, MainHomeView());
            },
            child: Icon(
              Icons.arrow_forward,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          CustomSignCard(
            txt: 'Login With Google',
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
            title: 'Don\'t have account ? ',
            text: 'Sign Up',
            onTap: () {
              navigateTo(
                context,
                SignUpView(),
              );
            },
          )
        ],
      ),
    );
  }
}
