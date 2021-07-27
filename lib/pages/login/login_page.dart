import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:sintransa_app/pages/login/controller/token_controller.dart';
import 'package:sintransa_app/pages/login/widgets/login_form.dart';
import 'package:sintransa_app/shared/constants/ui.dart';
import 'package:sintransa_app/shared/widgets/text.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TokenController>(
      create: (_) => TokenController(),
      builder: (_, __) {
        final MediaQueryData data = MediaQuery.of(_);
        final Size size = data.size;
        final padding = data.padding;

        return Scaffold(
          body: SafeArea(
            child: SingleChildScrollView(
              child: GestureDetector(
                onTap: () => FocusScope.of(context).unfocus(),
                child: Container(
                  width: size.width,
                  height: size.height - padding.top - padding.bottom,
                  color: UI.cWhite,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0.0,
                        child: Padding(
                          padding: const EdgeInsets.all(32.0),
                          child: Image.asset(
                            'assets/img/logo.png',
                            width: 24.0,
                            height: 24.0,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          width: size.width,
                          height: size.height * .65,
                          padding: const EdgeInsets.all(32.0),
                          decoration: BoxDecoration(
                            color: UI.cGrayOne,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(24.0),
                              topLeft: Radius.circular(24.0),
                            ),
                          ),
                          child: LoginForm(),
                        ),
                      ),
                      Positioned.fill(
                        top: size.height * .1,
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: OwnText(
                            value: 'Iniciar sesión'.toUpperCase(),
                            fColor: UI.cGrayTen,
                            fSize: 16.0,
                            fWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                      Positioned(
                        top: size.height * .13,
                        left: size.width / 4,
                        child: Container(
                          color: Colors.transparent,
                          width: 200.0,
                          height: 200.0,
                          child: Image.asset(
                            'assets/img/il-login.png',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
