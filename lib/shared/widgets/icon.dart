import 'package:flutter/material.dart';

class OwnIcon extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTap;
  final Color iColor;

  const OwnIcon({
    Key key,
    this.icon,
    this.onTap,
    this.iColor
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Icon(this.icon, color: this.iColor),
      onTap: this.onTap,
    );
  }
}
