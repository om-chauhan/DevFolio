import 'package:flutter/material.dart';

import 'mobile_landscape.dart';
import 'mobile_portrair.dart';

class MobileDevice extends StatelessWidget {
  const MobileDevice({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).orientation == Orientation.portrait) {
      print('Mobile');
      print(Orientation.landscape);
      return SafeArea(
        child: Scaffold(
          body: Padding(
            padding: EdgeInsets.all(5.0),
            child: MobilePortrait(),
          ),
        ),
      );
    } else {
      print('Mobile');
      print(Orientation.landscape);
      return SafeArea(
        child: Scaffold(
          body: Padding(
            padding: EdgeInsets.all(5.0),
            child: MobileLandscape(),
          ),
        ),
      );
    }
  }
}
