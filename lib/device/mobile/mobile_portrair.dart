import 'package:devomi/widgets/build_button.dart';
import 'package:devomi/widgets/build_text.dart';
import 'package:devomi/widgets/dev_pic.dart';
import 'package:devomi/widgets/social_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MobilePortrait extends StatelessWidget {
  const MobilePortrait({
    Key key,
    @required Size size,
  })  : _size = size,
        super(key: key);

  final Size _size;

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          DevPic(
            height: 300,
            width: _size.width,
          ),
          SizedBox(
            height: 20.0,
          ),
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
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              BuildButton(
                btncolor: Colors.green,
                text: 'Hire Me',
                txtcolor: Colors.white,
              ),
              BuildButton(
                text: 'CV',
                border: OutlineInputBorder(),
              ),
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          BuildText(
            text: 'Skils',
            size: 20.0,
            fontweight: FontWeight.bold,
          ),
          Divider(
            color: Colors.green,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  SvgPicture.asset(
                    'assets/icons/python.svg',
                    height: 50,
                    width: 50,
                  ),
                  BuildText(
                    text: 'C',
                  )
                ],
              ),
              Column(
                children: [
                  SvgPicture.asset(
                    'assets/icons/python.svg',
                    height: 50,
                    width: 50,
                  ),
                  BuildText(
                    text: 'C++',
                  )
                ],
              ),
              Column(
                children: [
                  SvgPicture.asset(
                    'assets/icons/python.svg',
                    height: 50,
                    width: 50,
                  ),
                  BuildText(
                    text: 'Java',
                  )
                ],
              ),
              Column(
                children: [
                  SvgPicture.asset(
                    'assets/icons/python.svg',
                    height: 50,
                    width: 50,
                  ),
                  BuildText(
                    text: 'Python',
                  )
                ],
              ),
              Column(
                children: [
                  SvgPicture.asset(
                    'assets/icons/python.svg',
                    height: 50,
                    width: 50,
                  ),
                  BuildText(
                    text: 'Dart',
                  )
                ],
              ),
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          BuildText(
            text: 'Portfolio',
            size: 20.0,
            fontweight: FontWeight.bold,
          ),
          Divider(
            color: Colors.green,
          ),
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/portfolio.png'),
                fit: BoxFit.cover,
              ),
            ),
            height: 300.0,
            alignment: Alignment.bottomCenter,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white10,
              ),
              alignment: Alignment.bottomLeft,
              height: 20.0,
              width: MediaQuery.of(context).size.width,
              child: BuildText(
                color: Colors.black,
                text: 'Project Name',
                size: 15.0,
              ),
            ),
          )
        ],
      ),
    ]);
  }
}
