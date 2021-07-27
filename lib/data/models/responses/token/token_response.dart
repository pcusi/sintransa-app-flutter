class TokenResponse {
  String token;

  TokenResponse({this.token});

  factory TokenResponse.fromJson(Map<String, dynamic> json) {
    return TokenResponse(
      token: json['token']
    );
  }

}