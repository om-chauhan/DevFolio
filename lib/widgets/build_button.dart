import 'package:flutter/material.dart';

import 'build_Text.dart';

class BuildButton extends StatelessWidget {
  final String text;
  final Color btncolor, txtcolor;
  final ShapeBorder border;

  const BuildButton({
    Key key,
    this.text,
    this.btncolor,
    this.border,
    this.txtcolor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 70,
      height: 30,
      decoration: BoxDecoration(
        color: btncolor,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: BuildText(
        text: text,
        color: txtcolor,
      ),
    );
  }
}
