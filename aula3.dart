void main(List<String> args) {
  Pai pai1 = Pai("Sebastiao", 35, "Programador");
  Filho filho1 = Filho("Joana", 13, "Alpega");
  pai1.apresentacao();
  filho1.apresentacao();
}

class Pessoa {
  String nome;
  int idade;

  Pessoa(this.nome, this.idade);

  void apresentacao() {
    print("O meu nome é ${this.nome} estou com ${this.idade} anos de idade.");
  }
}

class Pai extends Pessoa {
  String profissao;
  Pai(super.nome, super.idade, this.profissao);

  @override
  void apresentacao() {
    print(
        "O meu nome é ${this.nome} estou com ${this.idade} anos de idade, e a minha profissão é $profissao");
  }
}

class Filho extends Pessoa {
  String escola;

  Filho(super.nome, super.idade, this.escola);

  @override
  void apresentacao() {
    print(
        "O meu nome é ${this.nome} estou com ${this.idade} anos de idade, estudo na escola $escola .");
  }
}
