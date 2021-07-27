import 'package:flutter/material.dart';

class OwnText extends StatelessWidget {

  final double fSize;
  final Color fColor;
  final FontWeight fWeight;
  final double fHeight;
  final String value;
  final TextAlign fAlign;
  final bool isOverflow;

  const OwnText({Key key,
  this.fColor,
  this.fSize,
  this.fWeight,
  this.fHeight,
  this.fAlign,
  this.isOverflow = false,
  this.value
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      this.value,
      textAlign: this.fAlign,
      overflow: isOverflow ? TextOverflow.ellipsis : null,
      style: TextStyle(
        fontFamily: 'Lato',
        fontSize: this.fSize,
        fontWeight: this.fWeight,
        height: this.fHeight,
        color: this.fColor
      ),
    );
  }
}