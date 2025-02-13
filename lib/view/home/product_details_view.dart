import 'package:e_commerce/core/custom_text_field.dart';
import 'package:e_commerce/core/functions/custom_app_bar.dart';
import 'package:e_commerce/view/home/widget/CustomCachedNetworkImage.dart';
import 'package:e_commerce/view/home/widget/CustomRowIcons.dart';
import 'package:e_commerce/view/home/widget/custtom_comment_list.dart';
import 'package:flutter/material.dart';

import 'widget/CustomRatingBar.dart';

class ProductDetailsView extends StatelessWidget {
  const ProductDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(context, 'Product Details'),
      body: ListView(
        children: [
          CustomCachedNetworkImage(
              url:
                  'https://cdn.shopify.com/s/files/1/0070/7032/articles/diy-product-photography.jpg?v=1729894804&originalWidth=1848&originalHeight=782&width=1800'),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 15),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Books',
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      '123 LE',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                CustomRowIcons(),
                SizedBox(
                  height: 8,
                ),
                Text(
                  'Product Details',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(
                  height: 8,
                ),
                CustomRatingBar(),
                SizedBox(
                  height: 8,
                ),
                CustomTextFormField(
                  label: 'Type  your Feedback',
                  SUFFIX: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.send),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Comments',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                CusttomCommentList(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
