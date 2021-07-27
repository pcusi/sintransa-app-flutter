import 'package:sintransa_app/data/api.dart';
import 'package:sintransa_app/data/models/requests/afiliado/eventos/registrar_evento_request.dart';
import 'package:sintransa_app/data/repositories/afiliado/eventos/events_repository.dart';

class EventosRepositoryProvider implements EventosRepository {
  final ApiService apiService;

  EventosRepositoryProvider(this.apiService);

  @override
  Future<String> agregarEvento(RegistrarEventoRequest request, String token) async {
    final response = await apiService.postRequest(
      "${ApiService.eventoRoute}/agregar",
      hasToken: true,
      token: token,
      body: request.toBody()
    );

    if (response.statusCode == 200) {
      return "created";
    }

    return "canceled";
  }
}
