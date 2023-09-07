import 'package:desafio_imc/classes/peso_error.dart';
import 'package:desafio_imc/classes/pessoa.dart';
import 'package:test/test.dart';

void main() {
  group('Desafio IMC', () {
    var values = [
      {"name": "Alexander", "weight": 80, "height": 1.81, "result": 'Saudável'},
      {
        "name": "Alexander",
        "weight": 105,
        "height": 1.81,
        "result": 'Obesidade Grau I'
      },
    ];

    for (var element in values) {
      test(
          'Calcula IMC de: ${element["name"]}, peso: ${element["weight"]}, altura: ${element["height"]}',
          () {
        var pessoa = Pessoa(
            element["name"].toString(),
            double.parse(element["weight"].toString()),
            double.parse(element["height"].toString()));
        var classificacao = pessoa.classificaPessoa();
        expect(classificacao, element['result']);
      });
    }
  });

  test('Verifica erro ao tentar calcular imc de pessoa com peso negativo', () {
    var pessoa = Pessoa('Alexander', -1, 1.81);
    expect(() => pessoa.calculaImc(),
        throwsA(TypeMatcher<PesoAlturaError>()));
  });
  
  test('Verifica erro ao tentar calcular imc de pessoa com altura negativa', () {
    var pessoa = Pessoa('Alexander', 100, -1.81);
    expect(() => pessoa.calculaImc(),
        throwsA(TypeMatcher<PesoAlturaError>()));
  });
}
