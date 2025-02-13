import 'package:e_commerce/core/app_colors.dart';
import 'package:flutter/material.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: categoris.length,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              CircleAvatar(
                radius: 25,
                backgroundColor: AppColors.kPrimaryColor,
                foregroundColor: AppColors.kWhiteColor,
                child: Icon(
                  categoris[index].iconData,
                  size: 30,
                ),
              ),
              Text(categoris[index].text),
            ],
          ),
        );
      },
    );
  }
}

List<Category> categoris = [
  Category(iconData: Icons.sports, text: 'Sports'),
  Category(iconData: Icons.tv, text: 'Electronics'),
  Category(iconData: Icons.collections, text: 'Collections'),
  Category(iconData: Icons.book, text: 'Books'),
  Category(iconData: Icons.games, text: 'Games'),
  Category(iconData: Icons.bike_scooter, text: 'Bike'),
];

class Category {
  final IconData iconData;
  final String text;

  Category({required this.iconData, required this.text});
}
