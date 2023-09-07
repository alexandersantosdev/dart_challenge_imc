import 'package:desafio_imc/classes/console_utils.dart';
import 'package:desafio_imc/classes/pessoa.dart';

void main(List<String> arguments) {
  try {
    var nome = ConsoleUtils.lerEntradaComTexto('Nome:');
    var peso = ConsoleUtils.lerEntradaComDouble('Peso:');
    var altura = ConsoleUtils.lerEntradaComDouble('Altura:');
    var pessoa1 = Pessoa(nome, peso, altura);
    print(pessoa1.classificaPessoa());
  } catch (e) {
    print(e);
  }
}
