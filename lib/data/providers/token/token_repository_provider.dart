import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import 'package:sintransa_app/data/api.dart';
import 'package:sintransa_app/data/models/requests/token/acceder_request.dart';
import 'package:sintransa_app/data/models/responses/token/token_response.dart';
import 'package:sintransa_app/data/repositories/token/token_repository.dart';

class TokenRepositoryProvider implements TokenRepository {
  final ApiService _apiService;
  final storage = new FlutterSecureStorage();
  TokenRepositoryProvider(this._apiService);

  @override
  Future<TokenResponse> acceder(AccederRequest request) async {

    final response = await _apiService.postRequest(
      "${ApiService.tokenRoute}/acceder",
      body: request.toBody(),
    );

    if (response.statusCode == 200) {
      final json = jsonDecode(response.body);
      final token = TokenResponse.fromJson(json['result']);
      return token;
    }

    return null;
  }

  @override
  void guardarTokenDevice(String token) async {
    await storage.write(key: ApiService.sintransaToken, value: token);
  }

  @override
  Future<String> obtenerTokenDevice() async {
    final _token = await storage.read(key: ApiService.sintransaToken);
    return _token;
  }

  @override
  void eliminarTokenDevice() async {
    await storage.delete(key: ApiService.sintransaToken);
  }
}
