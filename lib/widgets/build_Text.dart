import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BuildText extends StatelessWidget {
  final String text;
  final FontWeight fontweight;
  final double size, height;
  final Color color;

  const BuildText({
    Key key,
    this.text,
    this.size,
    this.color,
    this.fontweight,
    this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.poppins(
        height: height,
        color: color,
        fontSize: size,
        fontWeight: fontweight,
        letterSpacing: 10,
      ),
    );
  }
}
