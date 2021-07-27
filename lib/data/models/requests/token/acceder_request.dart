class AccederRequest {
  String usuario;
  String clave;

  AccederRequest({this.usuario, this.clave});

  Map<String, dynamic> toBody() {
    return {
      "usuario": this.usuario,
      "clave": this.clave
    };
  }
}
