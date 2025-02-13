import 'package:e_commerce/core/Custom_Search_Field.dart';
import 'package:flutter/material.dart';

import 'widget/ProductCardListView.dart';

class StoreView extends StatelessWidget {
  const StoreView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 8,
          vertical: 16,
        ),
        child: Column(
          children: [
            Text(
              'Welcome To Our Market',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            CustomSearchField(),
            SizedBox(
              height: 16,
            ),
            ProductCardListView(),
          ],
        ),
      ),
    );
  }
}
