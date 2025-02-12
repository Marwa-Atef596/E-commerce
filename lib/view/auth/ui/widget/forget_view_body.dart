import 'package:e_commerce/view/auth/ui/widget/rest_password_content.dart';
import 'package:flutter/material.dart';

import 'custom_login_card.dart';

class ForgetViewBody extends StatelessWidget {
  const ForgetViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 50,
        ),
        Flexible(
          fit: FlexFit.loose,
          child: Text(
            'Enter Your Email to Rest Password',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        CustomLoginCard(
          child: RestPasswordContent(),
        ),
      ],
    );
  }
}
