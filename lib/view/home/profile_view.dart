import 'package:e_commerce/core/app_colors.dart';
import 'package:e_commerce/core/functions/navigate_to.dart';
import 'package:e_commerce/core/functions/push_replacement.dart';
import 'package:e_commerce/view/auth/logic/features/authentication/presentation/cubit/authentication_cubit.dart';
import 'package:e_commerce/view/auth/ui/widget/custom_login_card.dart';
import 'package:e_commerce/view/home/my_orders.dart';
import 'package:e_commerce/view/home/widget/CustomProgressIndicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../auth/ui/login_view.dart';
import 'edit_name_view.dart';
import 'widget/CustomProfileCard.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthenticationCubit, AuthenticationState>(
      listener: (context, state) {
        if (state is LogoutSuccess) {
          pushReplacement(context, LoginView());
        }
      },
      builder: (context, state) {
        return state is LogoutLoading
            ? CustomProgressIndicator()
            : Center(
                child: SizedBox(
                  height: MediaQuery.sizeOf(context).height * .7,
                  child: CustomLoginCard(
                    child: Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: AppColors.kPrimaryColor,
                          foregroundColor: AppColors.kWhiteColor,
                          radius: 50,
                          child: Icon(
                            Icons.person,
                            size: 40,
                            color: AppColors.kWhiteColor,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Person Name',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'Person Email',
                          style: TextStyle(fontSize: 16),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        CustomProfileCard(
                          iconData: Icons.person,
                          text: 'Edit Name',
                          onTap: () {
                            navigateTo(context, EditNameView());
                          },
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        CustomProfileCard(
                          iconData: Icons.shopping_basket,
                          text: 'My Orders',
                          onTap: () {
                            navigateTo(
                              context,
                              MyOrders(),
                            );
                          },
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        CustomProfileCard(
                            iconData: Icons.logout,
                            text: 'Log Out',
                            onTap: () {
                              context.read<AuthenticationCubit>().SignOut();
                            }),
                      ],
                    ),
                  ),
                ),
              );
      },
    );
  }
}
