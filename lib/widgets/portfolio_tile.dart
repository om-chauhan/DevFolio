import 'package:devomi/helper/config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:url_launcher/url_launcher.dart';

import 'build_text.dart';

class PortfolioTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Container(
          height: 200,
          alignment: Alignment.center,
          color: Colors.white,
          width: MediaQuery.of(context).size.width * 0.90,
          child: InkWell(
            onTap: () async {
              final url = Config.ProjectLink1;
              await canLaunch(url)
                  ? await launch(url)
                  : throw 'Could not launch $url';
            },
            child: Padding(
              padding: EdgeInsets.all(5),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      color: Colors.green,
                    ),
                    child: BuildText(
                      text: '01',
                      color: Colors.black,
                      size: 30,
                      spacing: 2,
                      fontweight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: BuildText(
                      text: Config.ProjectTitle1,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Container(
          height: 200,
          alignment: Alignment.center,
          color: Colors.white,
          width: MediaQuery.of(context).size.width * 0.90,
          child: InkWell(
            onTap: () async {
              final url = Config.ProjectLink2;
              await canLaunch(url)
                  ? await launch(url)
                  : throw 'Could not launch $url';
            },
            child: Padding(
              padding: EdgeInsets.all(5),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      color: Colors.green,
                    ),
                    child: BuildText(
                      text: '02',
                      color: Colors.black,
                      size: 30,
                      spacing: 2,
                      fontweight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: BuildText(
                      text: Config.ProjectTitle2,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Container(
          height: 200,
          alignment: Alignment.center,
          color: Colors.white,
          width: MediaQuery.of(context).size.width * 0.90,
          child: InkWell(
            onTap: () async {
              final url = Config.ProjectLink3;
              await canLaunch(url)
                  ? await launch(url)
                  : throw 'Could not launch $url';
            },
            child: Padding(
              padding: EdgeInsets.all(5),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      color: Colors.green,
                    ),
                    child: BuildText(
                      text: '03',
                      color: Colors.black,
                      size: 30,
                      spacing: 2,
                      fontweight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: BuildText(
                      text: Config.ProjectTitle3,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Container(
          height: 200,
          alignment: Alignment.center,
          color: Colors.white,
          width: MediaQuery.of(context).size.width * 0.90,
          child: InkWell(
            onTap: () async {
              final url = Config.ProjectLink4;
              await canLaunch(url)
                  ? await launch(url)
                  : throw 'Could not launch $url';
            },
            child: Padding(
              padding: EdgeInsets.all(5),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      color: Colors.green,
                    ),
                    child: BuildText(
                      text: '04',
                      color: Colors.black,
                      size: 30,
                      spacing: 2,
                      fontweight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: BuildText(
                      text: Config.ProjectTitle4,
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
