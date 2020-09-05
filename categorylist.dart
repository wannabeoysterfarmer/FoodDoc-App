import 'package:flutter/material.dart';
import 'categoryitem.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CategoryItem(title: "Appetizers", press: () {}),
          CategoryItem(title: "Sandwiches", press: () {}),
          CategoryItem(title: "Entree Meals", isActive: true,press: () {}),
          CategoryItem(title: "Combos", press: () {}),
          CategoryItem(title: "Soups", press: () {}),
          CategoryItem(title: "Desserts", press: () {}),
          CategoryItem(title: "Drinks & Wine", press: () {})
          ,
        ],
      ),
    );
  }
}

