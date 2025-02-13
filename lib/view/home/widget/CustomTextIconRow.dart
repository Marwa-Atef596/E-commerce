
import 'package:flutter/material.dart';

import '../../../core/app_colors.dart';

class CustomTextIconRow extends StatelessWidget {
  const CustomTextIconRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Product Name',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.favorite,
            size: 30,
            color: AppColors.kGreyColor,
          ),
        ),
      ],
    );
  }
}
