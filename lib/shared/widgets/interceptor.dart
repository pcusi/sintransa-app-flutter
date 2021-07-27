import 'package:flutter/material.dart';
import 'package:sintransa_app/shared/constants/ui.dart';
import 'package:sintransa_app/shared/widgets/text.dart';

class InterceptorMessage extends StatelessWidget {
  final String message;

  const InterceptorMessage({
    Key key,
    this.message
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height:  double.infinity,
      color: UI.cWhite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircularProgressIndicator(),
          SizedBox(height: 16.0),
          OwnText(
            value: this.message,
            fWeight: FontWeight.w300,
            fColor: UI.cGrayEight,
            fSize: 16.0,
          )
        ],
      ),
    );
  }
}
