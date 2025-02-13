import 'package:e_commerce/view/home/favorite_view.dart';
import 'package:e_commerce/view/home/home_view.dart';
import 'package:e_commerce/view/home/profile_view.dart';
import 'package:e_commerce/view/home/store_view.dart';
import 'package:e_commerce/view/nav_bar/logic/features/nav_bar/presentation/cubit/nav_bar_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widget/custom_bottom_Navigation_Bar.dart';

class MainHomeView extends StatelessWidget {
  MainHomeView({super.key});
  final List<Widget> views = [
    HomeView(),
    StoreView(),
    FavoriteView(),
    ProfileView(),
  ];
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NavBarCubit(),
      child: BlocBuilder<NavBarCubit, NavBarState>(
        builder: (context, state) {
          NavBarCubit cubit = BlocProvider.of<NavBarCubit>(context);
          return SafeArea(
            child: Scaffold(
              body: views[cubit.currentIndex],
              bottomNavigationBar: CustomBottomNavigationBar(),
            ),
          );
        },
      ),
    );
  }
}
