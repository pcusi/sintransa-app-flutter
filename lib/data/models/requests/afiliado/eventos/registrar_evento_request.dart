class RegistrarEventoRequest {
  String enlace, nombre, descripcion;
  bool activo;
  int fecha;

  RegistrarEventoRequest({
    this.enlace,
    this.nombre,
    this.descripcion,
    this.activo,
    this.fecha,
  });

  Map<String, dynamic> toBody() {
    return {
      "enlace": this.enlace,
      "nombre": this.nombre,
      "descripcion": this.descripcion,
      "fecha": this.fecha,
      "activo": this.activo,
    };
  }
}
