// ignore_for_file: file_names

import 'package:flutter/material.dart';

import 'custom_product_card.dart';

class ProductCardListView extends StatelessWidget {
  const ProductCardListView({
    super.key,
    this.shrinkWrap, this.physics,
  });
  final bool? shrinkWrap;
  final ScrollPhysics? physics;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics:physics?? NeverScrollableScrollPhysics(),
      shrinkWrap: shrinkWrap ?? true,
      itemCount: 5,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 8),
          child: CustomProductCard(),
        );
      },
    );
  }
}
