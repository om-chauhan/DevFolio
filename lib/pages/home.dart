import 'package:flutter/material.dart';

import '../device/desktop/desktop_portrair.dart';
import '../device/mobile/mobile_portrair.dart';
import '../device/tablet/tablet_portrair.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth <= 767) {
              return MobilePortrait();
            } else if (constraints.maxWidth >= 768 &&
                constraints.maxWidth <= 1023) {
              return TabletPortrait();
            } else {
              return DesktopPortrait();
            }
          },
        ),
      ),
    );
  }
}
