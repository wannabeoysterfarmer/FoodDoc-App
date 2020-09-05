import 'package:MVP/Screens/Home/Components/SearchBox.dart';
import 'package:MVP/Constants.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'ScrollingFoodOne.dart';
import 'categoryitem.dart';
import 'categorylist.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SearchBox(
          onChanged: (value) {},
        ),
        // Container for name of food - "e.g. hearty dishes"
        // Row --> food dishes
        CategoryList(),
        ScrollingFoodOne(),
      ],
    );
  }
}
