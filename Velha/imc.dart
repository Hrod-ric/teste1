import 'dart:io';

String receber(){
  String? input = stdin.readLineSync();
  if(input!.isEmpty){
    input = '0';
  }
  return input;
}
void main(){
  print('Babaouei');
  String? input = receber();
  double peso = double.parse(input);
  print('Babaouei');
  input = receber();
  double altura = double.parse(input);
  double imc = peso/(altura*altura);
  print(imc);
}