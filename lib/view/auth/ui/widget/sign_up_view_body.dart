import 'package:e_commerce/view/auth/ui/widget/card_sign_up_content.dart';
import 'package:flutter/material.dart';

import 'custom_login_card.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Text(
            'Welcome To Our Market',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          CustomLoginCard(
            child: CardSignUpContent(),
          ),
        ],
      ),
    );
  }
}