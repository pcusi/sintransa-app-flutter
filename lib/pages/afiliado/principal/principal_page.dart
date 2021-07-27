import 'package:flutter/material.dart';
import 'package:sintransa_app/routes/routes.dart';
import 'package:sintransa_app/shared/constants/ui.dart';
import 'package:sintransa_app/shared/widgets/text.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final data = MediaQuery.of(context);
    final Size size = data.size;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            color: UI.cWhite,
            child: Column(
              children: [
                Container(
                  width: size.width,
                  height: 248.0,
                  color: UI.cPrimaryOne,
                ),
                SizedBox(height: 16.0,),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(32.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            OwnText(
                              value: 'Eventos'.toUpperCase(),
                              fSize: 16.0,
                              fWeight: FontWeight.w400,
                              fColor: UI.cGrayNine,
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(context, Routes.EVENT);
                              },
                              child: OwnText(
                                value: 'Ver más',
                                fSize: 16.0,
                                fWeight: FontWeight.w300,
                                fColor: UI.cGrayNine,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
