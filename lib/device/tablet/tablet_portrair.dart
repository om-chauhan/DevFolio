import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../helper/config.dart';
import '../../widgets/build_Text.dart';
import '../../widgets/build_button.dart';
import '../../widgets/dev_pic.dart';
import '../../widgets/skills_tile.dart';
import '../../widgets/portfolio_tile.dart';
import '../../widgets/social_menu.dart';

class TabletPortrait extends StatelessWidget {
  const TabletPortrait({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          DevPic(
            height: 300,
            width: 300,
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
              Material(
                child: InkWell(
                  onTap: _mail,
                  child: SocialButton(
                    icon: FontAwesomeIcons.envelopeOpenText,
                  ),
                ),
              ),
              Material(
                child: InkWell(
                  onTap: _github,
                  child: SocialButton(
                    icon: FontAwesomeIcons.github,
                  ),
                ),
              ),
              Material(
                child: InkWell(
                  onTap: _linkedin,
                  child: SocialButton(
                    icon: FontAwesomeIcons.linkedin,
                  ),
                ),
              ),
              Material(
                child: InkWell(
                  onTap: _fb,
                  child: SocialButton(
                    icon: FontAwesomeIcons.facebook,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: _github,
                child: BuildButton(
                  btncolor: Colors.green,
                  text: 'Github',
                  txtcolor: Colors.white,
                ),
              ),
              InkWell(
                onTap: _cv,
                child: BuildButton(
                  txtcolor: Colors.white,
                  text: 'CV',
                  btncolor: Colors.black26,
                  border: OutlineInputBorder(),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          BuildText(
            text: 'SKILLS',
            size: 20.0,
            fontweight: FontWeight.bold,
          ),
          SizedBox(
            height: 20.0,
          ),
          Wrap(
            children: [
              SkillsTile(
                text: 'C',
                color: Colors.black,
                fontweight: FontWeight.normal,
                image: 'assets/icons/c.png',
                imgHeight: 50,
                imgWidth: 50,
              ),
              SkillsTile(
                text: 'C++',
                color: Colors.black,
                fontweight: FontWeight.normal,
                image: 'assets/icons/c++.png',
                imgHeight: 50,
                imgWidth: 50,
              ),
              SkillsTile(
                text: 'Java',
                color: Colors.black,
                fontweight: FontWeight.normal,
                image: 'assets/icons/java.png',
                imgHeight: 50,
                imgWidth: 50,
              ),
              SkillsTile(
                text: 'Python',
                color: Colors.black,
                fontweight: FontWeight.normal,
                image: 'assets/icons/python.png',
                imgHeight: 50,
                imgWidth: 50,
              ),
              SkillsTile(
                text: 'Dart',
                color: Colors.black,
                fontweight: FontWeight.normal,
                image: 'assets/icons/dart.png',
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
          SizedBox(
            height: 20.0,
          ),
          PortfolioTile(),
        ],
      ),
    );
  }

  void _mail() async {
    final Uri params = Uri(
      scheme: 'mailto',
      path: 'krissh1209@gmail.com',
      query:
          'subject=Hey !&body=Types your Message here', //add subject and body here
    );
    var _url = params.toString();
    await canLaunch(_url) ? await launch(_url) : throw 'Could not launch $_url';
  }

  void _github() async {
    const _url = Config.GITHUB;
    await canLaunch(_url) ? await launch(_url) : throw 'Could not launch $_url';
  }

  void _linkedin() async {
    const _url = Config.LINKEDIN;
    await canLaunch(_url) ? await launch(_url) : throw 'Could not launch $_url';
  }

  void _fb() async {
    const _url = Config.FB;
    await canLaunch(_url) ? await launch(_url) : throw 'Could not launch $_url';
  }

  void _cv() async {
    const _url = Config.CV;
    await canLaunch(_url) ? await launch(_url) : throw 'Could not launch $_url';
  }
}
