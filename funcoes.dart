void main(List<String> args) {
  print("Funções");

  calcularArea(12, 34);
  calcularArea(12, 0);

  Pessoa pessoa = new Pessoa(12, "Sebastiao", 12);

  pessoa.idade = 12;

  print("${pessoa.nome}");
}

void calcularArea(int lado1, int lado2) {
  print("A area do quadrado e : ${lado1 * lado1}");
}

class Pessoa {
  String nome;
  int idade;
  double peso;

  Pessoa(this.idade, this.nome, this.peso);
}
