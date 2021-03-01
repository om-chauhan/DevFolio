import 'package:devomi/widgets/build_text.dart';
import 'package:flutter/material.dart';

class DesktopDevice extends StatelessWidget {
  const DesktopDevice({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: BuildText(
        size: 50.0,
        text: 'Desktop',
        color: Colors.black,
      ),
    );
  }
}
