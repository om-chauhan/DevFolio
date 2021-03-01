import 'package:flutter/material.dart';

class SocialButton extends StatelessWidget {
  final String image;
  final double height, width;
  final IconData icon;

  const SocialButton({
    Key key,
    this.image,
    this.height,
    this.width,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5.0),
      child: IconButton(
        icon: Icon(
          icon,
        ),
        onPressed: () {},
      ),
    );
  }
}
