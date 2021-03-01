import 'package:devomi/widgets/build_button.dart';
import 'package:devomi/widgets/build_text.dart';
import 'package:devomi/widgets/dev_pic.dart';
import 'package:devomi/widgets/social_menu.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MobileLandscape extends StatelessWidget {
  const MobileLandscape({
    Key key,
    @required Size size,
  })  : _size = size,
        super(key: key);

  final Size _size;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        DevPic(
          height: 300,
          width: _size.height,
        ),
        SizedBox(
          width: 20.0,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BuildText(
              color: Colors.black,
              fontweight: FontWeight.bold,
              text: 'Hello, Om',
              size: 20.0,
            ),
            SizedBox(
              height: 10.0,
            ),
            BuildText(
              color: Colors.black,
              fontweight: FontWeight.normal,
              text: 'Flutter Developer',
              size: 18.0,
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SocialButton(
                  icon: FontAwesomeIcons.mailchimp,
                ),
                SocialButton(
                  icon: FontAwesomeIcons.github,
                ),
                SocialButton(
                  icon: FontAwesomeIcons.linkedin,
                ),
                SocialButton(
                  icon: FontAwesomeIcons.facebook,
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BuildButton(
                  btncolor: Colors.green,
                  text: 'Hire Me',
                  txtcolor: Colors.white,
                ),
                SizedBox(
                  width: 20.0,
                ),
                BuildButton(
                  text: 'CV',
                  border: OutlineInputBorder(),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
