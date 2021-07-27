import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sintransa_app/pages/afiliado/eventos/controllers/eventos_controller.dart';
import 'package:sintransa_app/shared/constants/ui.dart';
import 'package:sintransa_app/shared/widgets/input.dart';

class EventosRegistrarForm extends StatelessWidget {
  const EventosRegistrarForm({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<EventosController>(context, listen: false);

    return Column(
      children: [
        InputText(
          labelText: 'Nombre',
          hintText: 'Ingrese nombre',
          validator: (value) {
            return value.length > 3;
          },
          pColor: UI.cGrayFour,
          cBorder: UI.cGrayFour,
          lColor: UI.cGrayEight,
          onChanged: controller.onChangedNombre,
        ),
        SizedBox(
          height: 16.0,
        ),
        InputText(
          labelText: 'Descripción',
          hintText: 'Ingrese descripción',
          validator: (value) {
            return value.length > 3;
          },
          pColor: UI.cGrayFour,
          cBorder: UI.cGrayFour,
          lColor: UI.cGrayEight,
          onChanged: controller.onChangedDescripcion,
        ),
        SizedBox(
          height: 16.0,
        ),
        InputText(
          labelText: 'Fecha',
          hintText: 'Seleccione fecha',
          validator: (value) {
            return value.length > 3;
          },
          pColor: UI.cGrayFour,
          cBorder: UI.cGrayFour,
          lColor: UI.cGrayEight,
          onChanged: controller.onChangedFecha,
        ),
        SizedBox(
          height: 16.0,
        ),
        InputText(
          labelText: 'Enlace',
          hintText: 'Ingrese enlace',
          validator: (value) {
            return value.length > 3;
          },
          pColor: UI.cGrayFour,
          cBorder: UI.cGrayFour,
          lColor: UI.cGrayEight,
          onChanged: controller.onChangedEnlace,
        ),
      ],
    );
  }
}
