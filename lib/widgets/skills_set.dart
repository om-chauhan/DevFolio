import 'package:flutter/material.dart';

import 'skills_tile.dart';

class SkilsSet extends StatelessWidget {
  const SkilsSet({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
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
    );
  }
}
