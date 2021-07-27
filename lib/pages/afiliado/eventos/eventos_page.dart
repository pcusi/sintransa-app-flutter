import 'package:flutter/material.dart';
import 'package:sintransa_app/routes/routes.dart';
import 'package:sintransa_app/shared/constants/icons.dart';
import 'package:sintransa_app/shared/constants/ui.dart';
import 'package:sintransa_app/shared/widgets/back_search.dart';
import 'package:sintransa_app/shared/widgets/icon.dart';
import 'package:sintransa_app/shared/widgets/text.dart';

class EventsPage extends StatelessWidget {
  const EventsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            child: Column(
              children: [
                BackSearch(
                  showSearch: true,
                  goBack: () {
                    Navigator.pop(context);
                  },
                ),
                SizedBox(height: 8.0),
                Container(
                  child: Row(
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
                          Navigator.pushNamed(context, Routes.EVENT_REGISTER);
                        },
                        child: OwnText(
                          value: 'Adicionar',
                          fSize: 16.0,
                          fWeight: FontWeight.w300,
                          fColor: UI.cGrayNine,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 32.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
