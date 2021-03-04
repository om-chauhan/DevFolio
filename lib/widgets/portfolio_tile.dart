import 'package:flutter/material.dart';

import 'build_text.dart';

class PortfolioTile extends StatelessWidget {
  final String text;
  final double height, width;

  const PortfolioTile({
    Key key,
    this.text,
    this.height,
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5),
      child: Container(
        alignment: Alignment.bottomLeft,
        height: height,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
          color: Colors.green,
        ),
        child: Padding(
          padding: EdgeInsets.all(5),
          child: BuildText(
            text: text,
          ),
        ),
      ),
    );
  }
}
