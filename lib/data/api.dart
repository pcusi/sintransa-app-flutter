import 'dart:convert';

import 'package:http/http.dart' as http;

class ApiService {
  static const envDev = "https://10.0.2.2:5001/api";
  static const afiliadoRoute = "afiliado";
  static const eventoRoute = "evento";
  static const tokenRoute = "token";
  static const usuarioRoute = "usuario";
  static const sintransaToken = "SintransaToken";

  Future<http.Response> getRequest(
    String route, {
    bool hasToken = false,
    String token,
  }) async {
    final uri = "$envDev/$route";

    if (hasToken) {
      final responseWithToken = await http.get(Uri.parse(uri), headers: {
        "authorization": "Bearer $token",
        "content-type": "application/json"
      });
      return responseWithToken;
    }

    final response = await http.get(Uri.parse(uri), headers: {
      "content-type": "application/json",
    });

    return response;
  }

  Future<http.Response> postRequest(
    String route, {
    Map<String, dynamic> body,
    bool hasToken = false,
    String token
  }) async {
    final uri = "$envDev/$route";

    if (hasToken) {
      final responseWithToken = await http.post(
        Uri.parse(uri),
        body: jsonEncode(body),
        headers: {
          "Authorization": "Bearer $token",
          "content-type": "application/json",
        },
      );
      return responseWithToken;
    }

    final response = await http.post(
      Uri.parse(uri),
      body: jsonEncode(body),
      headers: {
        "content-type": "application/json",
      },
    );
    return response;
  }
}
