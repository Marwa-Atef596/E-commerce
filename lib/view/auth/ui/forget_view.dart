import 'package:e_commerce/view/auth/ui/widget/forget_view_body.dart';
import 'package:flutter/material.dart';

class ForgetView extends StatelessWidget {
  const ForgetView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ForgetViewBody(),
      ),
    );
  }
}
