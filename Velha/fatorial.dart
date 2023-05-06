import 'dart:io';

double receber(){
  String? input = stdin.readLineSync();
  if(input!.isEmpty){
    input = '1';
  }
  double valor = double.parse(input);
  return valor;
}

double fatorial(double numero){
  int fator = numero.toInt();
  for(int i = fator-1 ; i>1 ; i--){
    numero *= i;
  }
  return numero;
}

void main(){
  double a = 0;

  do{
    print('digite um numero para ser fatorado');
    a = receber();
  }while(a<0 || a>12);

  a = fatorial(a);
  print('o resultado é ' + (a.toInt()).toString());
}