import 'package:flutter/material.dart';

import '../device/desktop/desktop_device.dart';
import '../device/mobile/mobile_device.dart';
import '../device/tablet/tablet_device.dart';

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
              return MobileDevice();
            } else if (constraints.maxWidth >= 768 &&
                constraints.maxWidth <= 1023) {
              return TabletDevice();
            } else {
              return DesktopDevice();
            }
          },
        ),
      ),
    );
  }
}
