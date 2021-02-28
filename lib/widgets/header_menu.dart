import 'package:flutter/material.dart';

class HeaderMenu extends StatelessWidget {
  final String title;
  final String link;
  final double size;

  const HeaderMenu({
    Key key,
    this.title,
    this.link,
    this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Text(
        title,
        style: TextStyle(
          fontSize: size,
        ),
      ),
    );
  }
}
