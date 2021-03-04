import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'build_text.dart';

class SkillsTile extends StatelessWidget {
  final String text;
  final double imgHeight, imgWidth, textHeight;
  final String image;
  final Color color;
  final FontWeight fontweight;

  const SkillsTile({
    Key key,
    this.text,
    this.image,
    this.color,
    this.fontweight,
    this.imgHeight,
    this.imgWidth,
    this.textHeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5.0),
      child: Column(
        children: [
          SvgPicture.asset(
            image,
            height: imgHeight,
            width: imgWidth,
          ),
          BuildText(
            color: color,
            text: text,
            fontweight: fontweight,
            height: textHeight,
          )
        ],
      ),
    );
  }
}
