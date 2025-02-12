// ignore_for_file: file_names

import 'package:e_commerce/view/nav_bar/logic/features/nav_bar/presentation/cubit/nav_bar_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../../../../core/app_colors.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavBarCubit, NavBarState>(
      builder: (context, state) {
        return BlocConsumer<NavBarCubit, NavBarState>(
          listener: (context, state) {},
          builder: (context, state) {
            NavBarCubit cubit = BlocProvider.of<NavBarCubit>(context);
            return Container(
              decoration: const BoxDecoration(
                color: AppColors.kWhiteColor,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 8,
                  horizontal: 15,
                ),
                child: GNav(
                    onTabChange: (value) {
                      cubit.ChangeCurrentIndes(value);
                    },
                    rippleColor: AppColors
                        .kPrimaryColor, // tab button ripple color when pressed
                    hoverColor:
                        AppColors.kPrimaryColor, // tab button hover color
                    duration: const Duration(
                        milliseconds: 400), // tab animation duration
                    gap: 8, // the tab button gap between icon and text
                    color: AppColors.kGreyColor, // unselected icon color
                    activeColor:
                        AppColors.kWhiteColor, // selected icon and text color
                    iconSize: 24, // tab button icon size
                    tabBackgroundColor: AppColors
                        .kPrimaryColor, // selected tab background color
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 12,
                    ), // navigation bar padding
                    tabs: const [
                      GButton(
                        icon: Icons.home,
                        text: 'Home',
                      ),
                      GButton(
                        icon: Icons.store,
                        text: 'Store',
                      ),
                      GButton(
                        icon: Icons.favorite,
                        text: 'Favorite',
                      ),
                      GButton(
                        icon: Icons.person,
                        text: 'Profile',
                      )
                    ]),
              ),
            );
          },
        );
      },
    );
  }
}
