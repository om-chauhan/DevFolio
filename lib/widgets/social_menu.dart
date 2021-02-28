import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SocialButton extends StatelessWidget {
  final String image;
  final double height, width;
  const SocialButton({
    Key key,
    this.image,
    this.height,
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5.0),
      child: IconButton(
        icon: Icon(FontAwesomeIcons.github),
        onPressed: () {},
      ),
    );
  }
}
