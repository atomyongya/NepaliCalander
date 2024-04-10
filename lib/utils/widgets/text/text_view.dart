import 'package:flutter/material.dart';

class TextView extends StatelessWidget {
  final String text;
  final Color? color;
  final TextOverflow? overflow;
  final int? maxLines;
  final TextAlign? textAlign;
  final TextStyle? style;
  final bool? softWrap;
  final double? fontSize;
  final String? fontFamily;
  final FontWeight? fontWeight;
  final double? letterSpacing;

  const TextView({
    super.key,
    required this.text,
    this.color,
    this.overflow = TextOverflow.ellipsis,
    this.maxLines = 1,
    this.textAlign = TextAlign.center,
    this.softWrap = true,
    this.style,
    this.fontSize,
    this.fontFamily,
    this.fontWeight,
    this.letterSpacing,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: overflow,
      maxLines: maxLines,
      textAlign: textAlign,
      softWrap: softWrap,
      style: style ??
          TextStyle(
            color: color,
            overflow: overflow,
            fontSize: fontSize ?? 14,
            fontFamily: fontFamily,
            fontWeight: fontWeight,
            letterSpacing: letterSpacing,
          ),
    );
  }
}
