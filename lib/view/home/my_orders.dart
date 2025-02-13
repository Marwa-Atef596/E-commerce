import 'package:e_commerce/core/functions/custom_app_bar.dart';
import 'package:e_commerce/view/home/widget/ProductCardListView.dart';
import 'package:flutter/material.dart';

class MyOrders extends StatelessWidget {
  const MyOrders({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(context, 'My Orders'),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 10,
        ),
        child: ProductCardListView(
          shrinkWrap: false,
          physics: BouncingScrollPhysics(),
        ),
      ),
    );
  }
}
