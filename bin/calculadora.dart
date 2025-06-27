import 'dart:io';

void main() {
 double numeroUm = 0;
 double numeroDois = 0;
 String operacao = "";
 String? entrada = "";
 List<String> operacoes = <String>['+', '-', '*', '/'];


  void soma() {
    print(numeroUm + numeroDois);
  }

  void subtracao() {
    print(numeroUm - numeroDois);
  }

  void multiplicacao() {
    print(numeroUm * numeroDois);
  }

  void divisao() {
    if (numeroDois != 0) {
      print (numeroUm / numeroDois);
    }else{
      print('Divisão por zero não é permitida.');
    }
  }

  void calcular () {
  switch (operacao) {
    case '+':
      soma();
      break;
      case '-':
      subtracao();
      break;
      case '*':
      multiplicacao();
      break;
      case '/':
      divisao();
      break;
  }
}

  void getoperacao() {
    print('Digite uma operação ${operacoes.toString()}');
    entrada = stdin.readLineSync();
    if (entrada != null) {
      if (operacoes.contains(entrada)) {
        operacao = entrada!;
      } else {
        print('Operação inválida. Tente novamente.');
        getoperacao();
      }
    }
  }

  print("Digite o primeiro valor:");

   entrada = stdin.readLineSync();
  if(entrada != null) {
    if (entrada != "") {
      numeroUm = double.parse(entrada!);
    }
  }

  getoperacao();
  
  print("Digite o segundo valor:");

  entrada = stdin.readLineSync();
  if(entrada != null) {
    if (entrada != "") {
      numeroDois = double.parse(entrada!);
    }
  }

  print("O resultado da operação $numeroUm $operacao $numeroDois é:");

  calcular();
  
}