import 'package:flutter/cupertino.dart';
import 'package:sintransa_app/data/api.dart';
import 'package:sintransa_app/data/models/requests/token/acceder_request.dart';
import 'package:sintransa_app/data/models/responses/token/token_response.dart';
import 'package:sintransa_app/data/providers/token/token_repository_provider.dart';
import 'package:sintransa_app/data/repositories/token/token_repository.dart';

class TokenController extends ChangeNotifier {
  AccederRequest request = new AccederRequest();
  String token;
  final TokenRepository _repository = TokenRepositoryProvider(ApiService());

  void usuarioChanged(String usuario) {
    request.usuario = usuario;
  }

  void claveChanged(String clave) {
    request.clave = clave;
  }

  Future<TokenResponse> acceder() async {
    return await _repository.acceder(request);
  }

  guardarTokenDevice(String token) {
    _repository.guardarTokenDevice(token);
  }

  eliminarTokenDevice() {
    _repository.eliminarTokenDevice();
  }

  Future<String> obtenerTokenDevice() async {
    this.token = await _repository.obtenerTokenDevice();
    return token;
  }

}