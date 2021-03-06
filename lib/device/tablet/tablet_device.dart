import 'package:devomi/device/tablet/tablet_landscape.dart';
import 'package:devomi/device/tablet/tablet_portrair.dart';
import 'package:flutter/material.dart';

class TabletDevice extends StatelessWidget {
  const TabletDevice({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).orientation == Orientation.portrait) {
      print('Tablet');
      print(Orientation.portrait);
      return SafeArea(
        child: Scaffold(
          body: Padding(
            padding: EdgeInsets.all(5.0),
            child: TabletPortrait(),
          ),
        ),
      );
    } else {
      print('Tablet');
      print(Orientation.landscape);
      return SafeArea(
        child: Scaffold(
          body: Padding(
            padding: EdgeInsets.all(5.0),
            child: TabletLandscape(),
          ),
        ),
      );
    }
  }
}
