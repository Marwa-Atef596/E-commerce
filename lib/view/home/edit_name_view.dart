import 'package:e_commerce/core/app_colors.dart';
import 'package:e_commerce/core/custom_button.dart';
import 'package:e_commerce/core/custom_text_field.dart';
import 'package:flutter/material.dart';

class EditNameView extends StatelessWidget {
  const EditNameView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(context),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        child: Column(
          children: [
            CustomTextFormField(label: 'Enter Name'),
            SizedBox(
              height: 15,
            ),
            CustomButton(
              onPressed: () {},
              child: Text(
                'Update',
                style: TextStyle(
                  color: AppColors.kWhiteColor,
                  fontSize: 18,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  AppBar CustomAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.kPrimaryColor,
      title: Text(
        'Edit Name',
        style: TextStyle(
          color: AppColors.kWhiteColor,
        ),
      ),
      centerTitle: true,
      leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: AppColors.kWhiteColor,
          )),
    );
  }
}
