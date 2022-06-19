import 'package:flutter/material.dart';

class Lang extends StatelessWidget {
  final String? ar;
  final String? en;
  final TextStyle? style;
  final TextAlign textAlign;
  final FontWeight fontWeight;
  final int maxLines;
  final double fontSize;
  final Color color;
  final double? height;
  const Lang({
    Key? key,
    this.ar,
    this.en,
    this.style,
    this.maxLines = 5,
    this.fontSize = 14,
    this.textAlign = TextAlign.center,
    this.fontWeight = FontWeight.w400,
    this.color = Colors.white,
    this.height,
  }) : super(key: key);

  String text(context) {
    return ar ?? '';
  }

  String textUnlisten(context) {
    return ar ?? '';
  }

  @override
  Widget build(BuildContext context) {
    return Text(text(context).trim(),
        textAlign: textAlign,
        maxLines: maxLines,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
          fontFamily: 'alfont_com',
          fontSize: fontSize,
          fontWeight: fontWeight,
          color: color,
          height: height,
        ));
  }
}
