import 'package:flutter/material.dart';

import 'card_content.dart';
import 'custom_login_card.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

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
            child: CardLoginContent(),
          ),
        ],
      ),
    );
  }
}
