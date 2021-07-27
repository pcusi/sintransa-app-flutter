import 'package:sintransa_app/data/models/requests/token/acceder_request.dart';
import 'package:sintransa_app/data/models/responses/token/token_response.dart';

abstract class TokenRepository {
  Future<TokenResponse> acceder(AccederRequest request);
  void guardarTokenDevice(String token);
  void eliminarTokenDevice();
  Future<String> obtenerTokenDevice();
}