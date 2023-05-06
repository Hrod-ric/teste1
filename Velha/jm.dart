import 'dart:io';

int mm({required int a, required int b, required int c}){
  return a + b + c;
}

String text(String text, {int? a, int? b, int? c, Object? style}){
  return text;
}

String tt(String a, [String? text]){
  text = text ?? '';
  return a+=text;
}

String receber(){
  String? input = stdin.readLineSync();
  if(input!.isEmpty){
    input = '0';
  }
  return input;
}
void listar(List ll){
  for (var i in ll){
    print(i);
  }
}
void main(){
  //print(mm(a:4, b: 5, c: 6));
  //print(text('Mamaguebo', style: {}));

  //String a = "to: ";
  //a = tt(a);
  
  //String dif = receber();
  //print(a);

  //List <int> ll = [1,2,3,4,5];
  //listar(ll);
}