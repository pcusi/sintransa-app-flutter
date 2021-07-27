import 'package:flutter/material.dart';
import 'package:sintransa_app/pages/login/controller/token_controller.dart';
import 'package:sintransa_app/routes/routes.dart';
import 'package:sintransa_app/shared/constants/ui.dart';
import 'package:sintransa_app/shared/widgets/button.dart';
import 'package:sintransa_app/shared/widgets/input.dart';
import 'package:provider/provider.dart';

import 'package:sintransa_app/data/models/responses/token/token_response.dart';
import 'package:sintransa_app/shared/widgets/interceptor.dart';
import 'package:sintransa_app/shared/widgets/text.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({Key key}) : super(key: key);

  void acceder(BuildContext context) async {
    final controller = context.read<TokenController>();
    final TokenResponse data = await controller.acceder();

    showDialog(
      context: context,
      builder: (_) => InterceptorMessage(
        message: 'Estamos iniciando su sesión',
      ),
    );

    await Future.delayed(Duration(seconds: 2));

    if (data.token != null) {
      await controller.guardarTokenDevice(data.token);
      Navigator.pushNamedAndRemoveUntil(context, Routes.MAIN, (route) => false);
    }

  }

  @override
  Widget build(BuildContext context) {
    final request = Provider.of<TokenController>(context, listen: false);

    return Column(
      children: [
        SizedBox(
          height: 55.0,
        ),
        InputText(
          labelText: 'Usuario',
          hintText: 'Ingrese su usuario',
          validator: (value) {
            return value.length > 3;
          },
          pColor: UI.cGrayFour,
          cBorder: UI.cGrayFour,
          lColor: UI.cGrayEight,
          onChanged: request.usuarioChanged,
        ),
        SizedBox(
          height: 16.0,
        ),
        InputText(
          labelText: 'Contraseña',
          hintText: 'Ingrese su contraseña',
          validator: (value) {
            return value.contains('sintransa');
          },
          isPassword: true,
          pColor: UI.cGrayFour,
          cBorder: UI.cGrayFour,
          lColor: UI.cGrayEight,
          onChanged: request.claveChanged,
        ),
        SizedBox(
          height: 40.0,
        ),
        OwnButton(
          bValue: 'Ingresar'.toUpperCase(),
          bColor: UI.cPrimaryOne,
          isBlock: true,
          height: 48.0,
          borderRadius: BorderRadius.circular(8.0),
          boxShadow: [
            BoxShadow(
              offset: Offset(0.0, 0.0),
              blurRadius: 32.0,
              color: UI.cGrayThree.withOpacity(.5),
            ),
          ],
          onPressed: () => acceder(context),
        ),
        SizedBox(
          height: 40.0,
        ),
        OwnText(
          value: '¿Olvidaste tu contraseña?',
          fSize: 12.0,
          fColor: UI.cGrayNine,
          fWeight: FontWeight.w300,
        ),
      ],
    );
  }
}
