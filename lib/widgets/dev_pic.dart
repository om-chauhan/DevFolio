import 'package:flutter/material.dart';

class DevPic extends StatelessWidget {
  final double height, width;

  const DevPic({
    Key key,
    this.height,
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image(
      image: AssetImage('images/dev-pic.png'),
      height: height,
      width: width,
    );
  }
}
