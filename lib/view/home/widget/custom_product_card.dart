import 'package:e_commerce/core/app_colors.dart';
import 'package:e_commerce/core/functions/navigate_to.dart';
import 'package:e_commerce/view/home/product_details_view.dart';
import 'package:flutter/material.dart';

import 'CustomCachedNetworkImage.dart';
import 'CustomTextButtonRow.dart';
import 'CustomTextIconRow.dart';

class CustomProductCard extends StatelessWidget {
  const CustomProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        navigateTo(context, ProductDetailsView());
      },
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(16),
                      bottomRight: Radius.circular(16),
                      topRight: Radius.circular(16)),
                  child: CustomCachedNetworkImage(
                    url:
                        'https://cdn.shopify.com/s/files/1/0070/7032/articles/diy-product-photography.jpg?v=1729894804&originalWidth=1848&originalHeight=782&width=1800',
                  ),
                ),
                Positioned(
                    child: Container(
                  width: 70,
                  height: 40,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: AppColors.kPrimaryColor,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(8),
                      bottomRight: Radius.circular(8),
                    ),
                  ),
                  child: Text(
                    '10% OFF',
                    style: TextStyle(
                      color: AppColors.kWhiteColor,
                    ),
                  ),
                ))
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                children: [CustomTextIconRow(), CustomTextButtonRow()],
              ),
            )
          ],
        ),
      ),
    );
  }
}
