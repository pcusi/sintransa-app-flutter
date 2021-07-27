import 'package:flutter/material.dart';
import 'package:sintransa_app/shared/constants/ui.dart';
import 'package:sintransa_app/shared/widgets/text.dart';

class OwnButton extends StatelessWidget {
  final double width;
  final double height;
  final bool isBlock;
  final Color bColor;
  final String bValue;
  final BorderRadiusGeometry borderRadius;
  final List<BoxShadow> boxShadow;
  final VoidCallback onPressed;

  const OwnButton({
    Key key,
    this.width,
    this.height,
    this.isBlock = false,
    this.borderRadius,
    this.bColor,
    this.boxShadow,
    this.onPressed,
    this.bValue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: this.onPressed,
      child: Container(
        width: this.isBlock ? double.infinity : this.width,
        height: this.height,
        decoration: BoxDecoration(
          borderRadius: this.borderRadius,
          color: this.bColor,
          boxShadow: this.boxShadow,
        ),
        child: Center(
          child: OwnText(
            value: bValue,
            fColor: UI.cWhite,
            fWeight: FontWeight.normal,
            fSize: 16.0,
            fAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
