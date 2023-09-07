import 'dart:io';

class ConsoleUtils {
  static String lerEntradaComTexto(String texto) {
    print(texto);
    return stdin.readLineSync() ?? "";
  }

  static double lerEntradaComDouble(String texto) {
    print(texto);
    var valor = 0.0;
    try {
      valor = double.parse(stdin.readLineSync() ?? "");
    } catch (e) {
      print("Erro ao ler o valor: $e");
    }

    return valor;
  }
}
