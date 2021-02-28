import 'package:flutter/material.dart';

class SocialButton extends StatelessWidget {
  final String image;
  final double size;
  const SocialButton({
    Key key,
    this.image,
    this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5.0),
      child: InkWell(
        onTap: () {},
        child: Image(
          height: size,
          image: AssetImage(image),
        ),
      ),
    );
  }
}
