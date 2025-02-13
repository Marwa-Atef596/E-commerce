import 'package:e_commerce/view/home/widget/custom_product_card.dart';
import 'package:flutter/material.dart';

class FavoriteView extends StatelessWidget {
  const FavoriteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 8,
        vertical: 16,
      ),
      child: Column(
        children: [
          Text(
            'Your Favorit Products',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          CustomProductCard(),
        ],
      ),
    );
  }
}
