import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../Constants.dart';


class SearchBox extends StatelessWidget {
  final ValueChanged onChanged;
  const SearchBox ({
    Key key, this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(12),
      padding: EdgeInsets.symmetric(vertical: 3, horizontal: 25),
      decoration: BoxDecoration(
          border: Border.all(color: ksecondaryColor.withOpacity(0.2)),
          borderRadius: BorderRadius.circular(50)),
      child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText: "Search for dishes",
            hintStyle: TextStyle(fontStyle: FontStyle.italic),
            icon: SvgPicture.asset("Assets/Icons/search.svg")),
      ),
    );
  }
}
