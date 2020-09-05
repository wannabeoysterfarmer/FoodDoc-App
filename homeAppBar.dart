import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

AppBar homeAppBar(BuildContext context) {
  return AppBar(
      centerTitle: true,
      title: RichText(
        text: TextSpan(
            style: Theme.of(context)
                .textTheme
                .headline6
                .copyWith(fontWeight: FontWeight.bold),
            children: [
              TextSpan(
                text: "Restaurant",
                style: TextStyle(color: Colors.black54),
              ),
              TextSpan(text: "Name", style: TextStyle(color: Colors.black54))
            ]),
      ),
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset("Assets/Icons/jiangyi-99-apple-pepper.svg"),
        onPressed: () {},
      ),
      backgroundColor: Colors.greenAccent,
      actions: <Widget>[
        IconButton(
          icon: SvgPicture.asset("Assets/Icons/jiangyi-99-lemon-02.svg"),
          onPressed: () {},
        )
      ]);
}
