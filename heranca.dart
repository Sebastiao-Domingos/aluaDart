import 'class.dart';

class Homem extends Animal {
  String profissao;

  Homem(super.nome, super.peso, this.profissao);

  @override
  void andar() {
    print("Andou ${nome} , Homem");
  }

  @override
  String toString() {
    return 'Nome :$nome , Peso : $peso  , Profissao : $profissao';
  }
}
