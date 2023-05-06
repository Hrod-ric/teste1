import 'dart:io';

String receber(){
  String? input = stdin.readLineSync();
  if(input!.isEmpty){
    input = '0';
  }
  return input;
}
void main(){
  print('Pressão desejada');
  String ini = receber();
  print('Pressão atual');
  String fin = receber();
  double dif = double.parse(ini) - double.parse(fin);
  print('é necessario $dif de pressão');
}