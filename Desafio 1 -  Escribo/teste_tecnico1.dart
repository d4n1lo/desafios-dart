//Implemente uma função que receba um número inteiro positivo e retorne o somatório de todos os
//valores inteiros divisíveis por 3 ou 5 que sejam inferiores ao número passado.

// Caso sua função receba o inteiro 10, ela deve retornar 23, resultante do somatório dos números
// 3, 5, 6 e 9 que são menores que 10.

import 'dart:io';

void main() {
  var resultado = Somatorio();

  print('Digite um número positivo:');
  int? valor = int.parse(stdin.readLineSync()!);
  resultado.somatorio(valor);
}

class Somatorio {
  void somatorio(int valor) {
    int somatorio_numeros = 0;
    if (valor >= 0) {
      for (var i = 0; i < (valor); i++) {
        if (((i % 3) == 0 || ((i % 5) == 0)))
          somatorio_numeros = somatorio_numeros + i;
      }
      print(
          'O somátorio dos inteiros divisíveis por 3 e 5 são: \n$somatorio_numeros');
    } else {
      print('Número incorreto.');
    }
  }
}
