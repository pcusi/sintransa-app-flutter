import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sintransa_app/pages/afiliado/eventos/controllers/eventos_controller.dart';
import 'package:sintransa_app/pages/afiliado/eventos/registrar/widgets/eventos_registrar_form.dart';
import 'package:sintransa_app/shared/constants/ui.dart';
import 'package:sintransa_app/shared/widgets/back_search.dart';
import 'package:sintransa_app/shared/widgets/button.dart';
import 'package:sintransa_app/shared/widgets/text.dart';

class EventsRegisterPage extends StatelessWidget {
  const EventsRegisterPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => EventosController(),
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
                  child: Padding(
                    padding: const EdgeInsets.only(left: 32.0, right: 32.0, bottom: 16.0),
                    child: Column(
                      children: [
                        BackSearch(),
                        Container(
                          child: Row(
                            children: [
                              OwnText(
                                value: 'Adicionar Evento'.toUpperCase(),
                                fSize: 16.0,
                                fWeight: FontWeight.w400,
                                fColor: UI.cGrayNine,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 40.0,
                        ),
                        Container(
                          child: EventosRegistrarForm(),
                        ),
                        Spacer(),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: OwnButton(
                            bValue: 'Guardar'.toUpperCase(),
                            height: 48.0,
                            isBlock: true,
                            borderRadius: BorderRadius.circular(8.0),
                            bColor: UI.cGrayFour,
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(0.0, 0.0),
                                blurRadius: 32.0,
                                color: UI.cGrayThree.withOpacity(.5),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
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
