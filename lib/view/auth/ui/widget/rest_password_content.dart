import 'package:e_commerce/core/custom_button.dart';
import 'package:e_commerce/core/custom_text_field.dart';
import 'package:e_commerce/core/functions/shoe_message.dart';
import 'package:e_commerce/view/auth/logic/features/authentication/presentation/cubit/authentication_cubit.dart';
import 'package:e_commerce/view/home/widget/CustomProgressIndicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RestPasswordContent extends StatefulWidget {
  const RestPasswordContent({super.key});

  @override
  State<RestPasswordContent> createState() => _RestPasswordContentState();
}

class _RestPasswordContentState extends State<RestPasswordContent> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthenticationCubit, AuthenticationState>(
      listener: (context, state) {
        if (state is ResetPasswordSuccess) {
          Navigator.pop(context);
          ShowMessage(context, 'Success');
        }
        if (state is ResetPasswordLoading) {
          CustomProgressIndicator();
        }
      },
      builder: (context, state) {
        return Form(
          key: formKey,
          child: Column(
            children: [
              CustomTextFormField(
                label: 'Email',
                controller: _emailController,
              ),
              SizedBox(
                height: 20,
              ),
              CustomButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    context
                        .read<AuthenticationCubit>()
                        .resetPassword(email: _emailController.text);
                  }
                },
                child: Text(
                  'Send',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
