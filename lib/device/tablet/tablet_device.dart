import 'package:devomi/widgets/build_Text.dart';
import 'package:flutter/material.dart';

class TabletDevice extends StatelessWidget {
  const TabletDevice({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: BuildText(
        color: Colors.black,
        size: 50.0,
        text: 'Tablet',
      ),
    );
  }
}
