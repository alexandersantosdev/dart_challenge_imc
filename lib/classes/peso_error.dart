class PesoAlturaError implements Exception {
  String message = "";
  PesoAlturaError(this.message);

  @override
  String toString() => message;
}
