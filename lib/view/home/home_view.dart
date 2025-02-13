import 'package:e_commerce/view/home/widget/category_list_view.dart';
import 'package:flutter/material.dart';

import '../../core/Custom_Search_Field.dart';
import 'widget/ProductCardListView.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 8,
          vertical: 8,
        ),
        child: Column(
          children: [
            CustomSearchField(),
            SizedBox(
              height: 20,
            ),
            Image.asset('assets/images/buy.jpg'),
            const SizedBox(
              height: 15,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: const Text(
                "Popular Categories",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 100,
              child: CategoryListView(),
            ),
            SizedBox(
              height: 15,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: const Text(
                "Recently Product",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            ProductCardListView(),
          ],
        ),
      ),
    );
  }
}
