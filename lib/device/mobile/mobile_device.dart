import 'package:devomi/widgets/build_Text.dart';
import 'package:devomi/widgets/dev_pic.dart';
import 'package:flutter/material.dart';

class MobileDevice extends StatelessWidget {
  const MobileDevice({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    if (MediaQuery.of(context).orientation == Orientation.portrait) {
      return Padding(
        padding: EdgeInsets.all(5.0),
        child: Column(
          children: [
            DevPic(
              height: 300,
              width: _size.width,
            ),
            BuildText(
              color: Colors.black,
              fontweight: FontWeight.bold,
              text: 'Flutter Developer',
              size: 20.0,
            ),
          ],
        ),
      );
    } else {
      return Row(
        children: [],
      );
    }
  }
}
