import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'build_text.dart';

class PortfolioTile extends StatefulWidget {
  final double height, width;

  const PortfolioTile({
    Key key,
    this.height,
    this.width,
  }) : super(key: key);

  @override
  _PortfolioTileState createState() => _PortfolioTileState();
}

var projectTitles = [
  'Mera desh - Educational App',
  'Super Store - E-Commerce App',
  'Devomi - Portfolio',
  'Simple Calculator'
];
var projectImages = [
  'https://play-lh.googleusercontent.com/Nu1Ah1bunpCCn_i29SS_xy4sfO3v6kmpjU4bmgaKRo50hEsa7tCD5SALp_A6RI7o-3xt=w1366-h577-rw',
  'https://raw.githubusercontent.com/om-chauhan/Super-Store-Ecommerce-App-using-REST-Api-in-Flutter/master/screenshot/splash-screen.jpg',
  'https://raw.githubusercontent.com/om-chauhan/Super-Store-Ecommerce-App-using-REST-Api-in-Flutter/master/screenshot/splash-screen.jpg',
  'Simple Calculator'
];
var projectLinks = [
  'https://play.google.com/store/apps/details?id=com.adbytee.mera_desh',
  'https://github.com/om-chauhan/Super-Store-Ecommerce-App-using-REST-Api-in-Flutter',
  'https://github.com/om-chauhan/devomi',
  'https://raw.githubusercontent.com/om-chauhan/Simple-Calculator-Flutter/master/Screenshot-simple-calculator-flutter.jpg'
];

class _PortfolioTileState extends State<PortfolioTile> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: projectTitles.length,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () async {
            await canLaunch(projectLinks[index])
                ? await launch(projectLinks[index])
                : throw 'Could not launch ${projectLinks[index]}';
          },
          child: Container(
            alignment: Alignment.bottomLeft,
            height: widget.height,
            width: widget.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
              color: Colors.green,
            ),
            child: Padding(
              padding: EdgeInsets.all(5),
              child: BuildText(
                text: projectTitles[index],
              ),
            ),
          ),
        );
      },
    );
  }
}
