executa(int x, Function(int x) fn){
  return fn(x);
}
num pow(num x, num? y)=> x * (y == null ? 2 : y);
void main(){
  int mm(int i) => i * 6;
  int nn(int i) => mm(i) * 3;
  print(executa(3,nn));
  print("Pow: ${pow(2,8)}");
}