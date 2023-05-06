//import 'dart:io';

abstract class Pessoa{
  final String nome;
  final String cpf;

  //Construtor de atributos posicionais
  //Pessoa(this.nome, this.cpf,this.idade);

  //Construtor de atributos nomeados
  Pessoa({required this.nome,required this.cpf});

  String teste(){
    return 'marmelada';
  }

  //sobrescreve
  @override
  String toString(){
    return 'Nome: $nome, Cpf: $cpf';
  }
}

class Funcionario extends Pessoa {
  int _idade;
  Funcionario({required String nome, required String cpf, required int idade}):
  this._idade = idade,
  super(nome: nome, cpf: cpf);

  @override
  String teste(){
    return 'idade: $_idade';
  }

  get idade => _idade;
  set idade(value) => _idade = value;
}