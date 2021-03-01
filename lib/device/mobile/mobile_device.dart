import 'package:flutter/material.dart';

import 'mobile_landscape.dart';
import 'mobile_portrair.dart';

class MobileDevice extends StatelessWidget {
  const MobileDevice({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    if (MediaQuery.of(context).orientation == Orientation.portrait) {
      return SafeArea(
        child: Scaffold(
          body: Padding(
            padding: EdgeInsets.all(5.0),
            child: MobilePortrait(size: _size),
          ),
        ),
      );
    } else {
      return SafeArea(
        child: Scaffold(
          body: Padding(
            padding: EdgeInsets.all(5.0),
            child: MobileLandscape(size: _size),
          ),
        ),
      );
    }
  }
}
