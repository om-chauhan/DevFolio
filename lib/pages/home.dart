import 'package:devomi/device/desktop/desktop_device.dart';
import 'package:devomi/device/mobile/mobile_device.dart';
import 'package:devomi/device/tablet/tablet_device.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var isLargeScreen = false;
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
