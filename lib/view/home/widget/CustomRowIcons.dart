

import 'package:flutter/material.dart';

import '../../../core/app_colors.dart';

class CustomRowIcons extends StatelessWidget {
  const CustomRowIcons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Text(
              '0',
              style: TextStyle(fontSize: 16),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.star,
                color: Colors.amber,
              ),
            ),
          ],
        ),
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.favorite,
              color: AppColors.kGreyColor,
            ))
      ],
    );
  }
}
