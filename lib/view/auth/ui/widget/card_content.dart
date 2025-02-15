import 'package:e_commerce/view/auth/logic/features/authentication/presentation/cubit/authentication_cubit.dart';
import 'package:e_commerce/view/auth/ui/forget_view.dart';
import 'package:e_commerce/view/auth/ui/sign_up_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/custom_text_field.dart';
import '../../../../core/functions/navigate_to.dart';
import '../../../../core/functions/shoe_message.dart';
import '../../../nav_bar/ui/main_home_view.dart';
import 'custom_login_text.dart';
import 'custom_sign_card.dart';
import 'custom_text_row.dart';

class CardLoginContent extends StatefulWidget {
  const CardLoginContent({
    super.key,
  });

  @override
  State<CardLoginContent> createState() => _CardLoginContentState();
}

class _CardLoginContentState extends State<CardLoginContent> {
  final TextEditingController _emailEditingController = TextEditingController();
  final TextEditingController _passEditingController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  void dispose() {
    _emailEditingController.dispose();
    _passEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthenticationCubit, AuthenticationState>(
      listener: (context, state) {
        if (state is LoginSuccess) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => MainHomeView(),
            ),
          );
        }
        if (state is LoginFailure) {
          ShowMessage(context, state.errMessage);
        }
        if (state is LoginLoading) {
          CircularProgressIndicator();
        }
      },
      builder: (context, state) {
        AuthenticationCubit cubit = context.read<AuthenticationCubit>();
        return Form(
          key: _formKey,
          child: Column(
            children: [
              CustomTextFormField(
                  controller: _emailEditingController, label: 'Email'),
              SizedBox(
                height: 20,
              ),
              CustomTextFormField(
                controller: _passEditingController,
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
                  if (_formKey.currentState!.validate()) {
                    cubit.login(
                      pass: _passEditingController.text,
                      email: _emailEditingController.text,
                    );
                  }
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
      },
    );
  }
}
