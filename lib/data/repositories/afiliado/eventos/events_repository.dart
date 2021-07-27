import 'package:sintransa_app/data/models/requests/afiliado/eventos/registrar_evento_request.dart';

abstract class EventosRepository {
  Future<String> agregarEvento(RegistrarEventoRequest request, String token);
}