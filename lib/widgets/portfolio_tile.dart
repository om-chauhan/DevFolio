import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:url_launcher/url_launcher.dart';

import '../helper/config.dart';
import 'build_text.dart';

class PortfolioTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.spaceAround,
      direction: Axis.horizontal,
      children: [
        InkWell(
          onTap: () async {
            final url = Config.ProjectLink1;
            await canLaunch(url)
                ? await launch(url)
                : throw 'Could not launch $url';
          },
          child: Padding(
            padding: EdgeInsets.all(5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(5),
                    child: BuildText(
                      text: '01',
                      color: Colors.black,
                      size: 100,
                      spacing: 2,
                      fontweight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(5),
                  child: BuildText(
                    size: 12,
                    text: Config.ProjectTitle1,
                  ),
                ),
              ],
            ),
          ),
        ),
        InkWell(
          onTap: () async {
            final url = Config.ProjectLink2;
            await canLaunch(url)
                ? await launch(url)
                : throw 'Could not launch $url';
          },
          child: Padding(
            padding: EdgeInsets.all(5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(5),
                    child: BuildText(
                      text: '02',
                      color: Colors.black,
                      size: 100,
                      spacing: 2,
                      fontweight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(5),
                  child: BuildText(
                    size: 12,
                    text: Config.ProjectTitle2,
                  ),
                ),
              ],
            ),
          ),
        ),
        InkWell(
          onTap: () async {
            final url = Config.ProjectLink3;
            await canLaunch(url)
                ? await launch(url)
                : throw 'Could not launch $url';
          },
          child: Padding(
            padding: EdgeInsets.all(5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(5),
                    child: BuildText(
                      text: '03',
                      color: Colors.black,
                      size: 100,
                      spacing: 2,
                      fontweight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(5),
                  child: BuildText(
                    size: 12,
                    text: Config.ProjectTitle3,
                  ),
                ),
              ],
            ),
          ),
        ),
        InkWell(
          onTap: () async {
            final url = Config.ProjectLink4;
            await canLaunch(url)
                ? await launch(url)
                : throw 'Could not launch $url';
          },
          child: Padding(
            padding: EdgeInsets.all(5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(5),
                    child: BuildText(
                      text: '04',
                      color: Colors.black,
                      size: 100,
                      spacing: 2,
                      fontweight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(5),
                  child: BuildText(
                    size: 12,
                    text: Config.ProjectTitle4,
                  ),
                ),
              ],
            ),
          ),
        ),
        InkWell(
          onTap: () async {
            final url = Config.ProjectLink5;
            await canLaunch(url)
                ? await launch(url)
                : throw 'Could not launch $url';
          },
          child: Padding(
            padding: EdgeInsets.all(5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(5),
                    child: BuildText(
                      text: '05',
                      color: Colors.black,
                      size: 100,
                      spacing: 2,
                      fontweight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(5),
                  child: BuildText(
                    size: 12,
                    text: Config.ProjectTitle5,
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
