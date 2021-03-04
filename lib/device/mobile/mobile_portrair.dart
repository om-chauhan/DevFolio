import 'package:devomi/widgets/build_button.dart';
import 'package:devomi/widgets/build_text.dart';
import 'package:devomi/widgets/dev_pic.dart';
import 'package:devomi/widgets/social_menu.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../widgets/skills_tile.dart';
import '../../widgets/portfolio_tile.dart';

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
            fontweight: FontWeight.normal,
            text: "Hello, I'm",
            size: 20.0,
          ),
          SizedBox(
            height: 10.0,
          ),
          BuildText(
            color: Colors.black,
            fontweight: FontWeight.bold,
            text: 'Omprakash',
            size: 20.0,
          ),
          SizedBox(
            height: 10.0,
          ),
          BuildText(
            color: Colors.black,
            fontweight: FontWeight.w400,
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
                icon: FontAwesomeIcons.envelopeOpenText,
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
            text: 'SKILS',
            size: 20.0,
            fontweight: FontWeight.bold,
          ),
          Divider(
            indent: 100,
            endIndent: 100,
            color: Colors.green,
          ),
          Wrap(
            children: [
              SkillsTile(
                text: 'C',
                color: Colors.black,
                fontweight: FontWeight.normal,
                image: 'assets/icons/c.svg',
                imgHeight: 50,
                imgWidth: 50,
              ),
              SkillsTile(
                text: 'C++',
                color: Colors.black,
                fontweight: FontWeight.normal,
                image: 'assets/icons/c++.svg',
                imgHeight: 50,
                imgWidth: 50,
              ),
              SkillsTile(
                text: 'Java',
                color: Colors.black,
                fontweight: FontWeight.normal,
                image: 'assets/icons/java.svg',
                imgHeight: 50,
                imgWidth: 50,
              ),
              SkillsTile(
                text: 'Python',
                color: Colors.black,
                fontweight: FontWeight.normal,
                image: 'assets/icons/python.svg',
                imgHeight: 50,
                imgWidth: 50,
              ),
              SkillsTile(
                text: 'Dart',
                color: Colors.black,
                fontweight: FontWeight.normal,
                image: 'assets/icons/dart.svg',
                imgHeight: 50,
                imgWidth: 50,
              ),
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          BuildText(
            text: 'PORTFOLIO',
            size: 20.0,
            fontweight: FontWeight.bold,
          ),
          Divider(
            indent: 100,
            endIndent: 100,
            color: Colors.green,
          ),
          Wrap(
            children: [
              PortfolioTile(
                text: 'Mera desh - Educational App',
                height: 150,
                width: 150,
              ),
              PortfolioTile(
                text: 'Super Store - E-Commerce App',
                height: 150,
                width: 150,
              ),
              PortfolioTile(
                text: 'Devomi - Portfolio',
                height: 150,
                width: 150,
              ),
              PortfolioTile(
                text: 'Simple Calculator',
                height: 150,
                width: 150,
              ),
            ],
          ),
        ],
      ),
    ]);
  }
}
