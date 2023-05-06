void main(){
  var listaAlunos = ["Pedro","Paulo","Lucas","Felipe"];
  print("Alunos");
  listaAlunos.forEach((alunos) {
    print('${listaAlunos.indexOf(alunos)}: $alunos');
  });

  //listaAlunos.forEach((alunos)=>print(alunos));
}