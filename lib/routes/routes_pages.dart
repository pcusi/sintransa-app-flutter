import 'package:flutter/cupertino.dart';
import 'package:sintransa_app/pages/afiliado/eventos/eventos_page.dart';
import 'package:sintransa_app/pages/afiliado/eventos/registrar/eventos_registrar_page.dart';
import 'package:sintransa_app/pages/afiliado/principal/principal_page.dart';
import 'package:sintransa_app/pages/login/login_page.dart';
import 'package:sintransa_app/routes/routes.dart';

abstract class Pages {

  static const String INITIAL = Routes.LOGIN;

  static final Map<String, Widget Function(BuildContext)> routes = {
    Routes.LOGIN: (_) => LoginPage(),
    Routes.MAIN: (_) => MainPage(),
    Routes.EVENT: (_) => EventsPage(),
    Routes.EVENT_REGISTER: (_) => EventsRegisterPage(),
  };
}