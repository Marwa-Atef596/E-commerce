import 'package:e_commerce/view/auth/logic/features/authentication/presentation/cubit/authentication_cubit.dart';
import 'package:e_commerce/view/auth/ui/login_view.dart';
import 'package:e_commerce/view/nav_bar/ui/main_home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/custom_text_field.dart';
import '../../../../core/functions/navigate_to.dart';
import '../../../../core/functions/shoe_message.dart';
import 'custom_sign_card.dart';
import 'custom_text_row.dart';

class CardSignUpContent extends StatefulWidget {
  const CardSignUpContent({super.key});

  @override
  State<CardSignUpContent> createState() => _CardSignUpContentState();
}

class _CardSignUpContentState extends State<CardSignUpContent> {
  final TextEditingController _nameEditingController = TextEditingController();
  final TextEditingController _emailEditingController = TextEditingController();
  final TextEditingController _passEditingController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _nameEditingController.dispose();
    _emailEditingController.dispose();
    _passEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthenticationCubit, AuthenticationState>(
      listener: (context, state) {
        if (state is SignUpSuccess) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => MainHomeView(),
            ),
          );
        }
        if (state is SignUpFailure) {
          ShowMessage(context, state.errMessage);
        }
        if (state is SignUpLoading) {
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
                label: 'Name',
                controller: _nameEditingController,
              ),
              SizedBox(
                height: 20,
              ),
              CustomTextFormField(
                label: 'Email',
                controller: _emailEditingController,
              ),
              SizedBox(
                height: 20,
              ),
              CustomTextFormField(
                label: 'Password',
                controller: _passEditingController,
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
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    cubit.SignUP(
                      name: _nameEditingController.text,
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
      },
    );
  }
}
