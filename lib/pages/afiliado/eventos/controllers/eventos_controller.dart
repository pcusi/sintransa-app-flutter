import 'package:flutter/cupertino.dart';
import 'package:sintransa_app/data/api.dart';
import 'package:sintransa_app/data/models/requests/afiliado/eventos/registrar_evento_request.dart';
import 'package:sintransa_app/data/providers/afiliado/eventos/eventos_repository_provider.dart';
import 'package:sintransa_app/data/repositories/afiliado/eventos/events_repository.dart';

class EventosController with ChangeNotifier {
  RegistrarEventoRequest request = new RegistrarEventoRequest();
  final EventosRepository _repository = EventosRepositoryProvider(ApiService());

  void onChangedNombre(String nombre) {
    request.nombre = nombre;
  }

  void onChangedDescripcion(String descripcion) {
    request.descripcion = descripcion;
  }

  void onChangedFecha(int fecha) {
    request.fecha = fecha;
  }

  void onChangedEnlace(String enlace) {
    request.enlace = enlace;
  }

  Future<String> agregar(String token) async {
    return await _repository.agregarEvento(request, token);
  }

}