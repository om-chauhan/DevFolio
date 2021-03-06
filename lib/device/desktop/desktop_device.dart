import 'package:devomi/device/desktop/desktop_portrair.dart';
import 'package:flutter/material.dart';

import 'desktop_landscape.dart';

class DesktopDevice extends StatelessWidget {
  const DesktopDevice({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).orientation == Orientation.portrait) {
      print('Desktop');
      print(Orientation.portrait);
      return SafeArea(
        child: Scaffold(
          body: DesktopPortrait(),
        ),
      );
    } else {
      print('Desktop');
      print(Orientation.landscape);
      return SafeArea(
        child: Scaffold(
          body: DesktopLandscape(),
        ),
      );
    }
  }
}
