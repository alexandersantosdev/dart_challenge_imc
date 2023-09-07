// ignore_for_file: unnecessary_getters_setters

import 'package:desafio_imc/classes/peso_error.dart';

class Pessoa {
  String _nome;
  double _peso;
  double _altura;

  Pessoa(this._nome, this._peso, this._altura);

  String get nome => _nome;
  double get peso => _peso;
  double get altura => _altura;

  set nome(String nome) => _nome = nome;
  set peso(double peso) => _peso = peso;
  set altura(double altura) => _altura = altura;

  String classificaPessoa() {
    var imc = calculaImc();
    var classificacao = '';
    if (imc < 16) {
      classificacao = 'Magreza grave';
    } else if (imc >= 16 && imc < 17) {
      classificacao = 'Magreza moderada';
    } else if (imc >= 17 && imc < 18.5) {
      classificacao = 'Magreza leve';
    } else if (imc >= 18.5 && imc < 25) {
      classificacao = 'Saudável';
    } else if (imc >= 25 && imc < 30) {
      classificacao = 'Sobre peso';
    } else if (imc >= 30 && imc < 35) {
      classificacao = 'Obesidade Grau I';
    } else if (imc >= 35 && imc < 40) {
      classificacao = 'Obesidade Grau II (severa)';
    } else {
      classificacao = 'Obesidade Grau III (mórbida)';
    }
    return classificacao;
  }

  double calculaImc() {
    if (_altura < 1.20 || _altura > 2.40) {
      throw PesoAlturaError('Altura inválida, deve conter entre 1,20m e 2,40m');
    }
    if (_peso < 35 || _peso > 380) {
      throw PesoAlturaError('Peso inválido, deve conter entre 35kg e 380kg');
    }
    return _peso / (_altura * _altura);
  }
}
