import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HeaderName extends StatelessWidget {
  const HeaderName({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.add),
        SizedBox(
          width: 10.0,
        ),
        Text('Portfolio'),
      ],
    );
  }
}
