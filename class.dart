class Pessoa {
  String _nome;
  int _idade;
  double _peso;
  double _altura;

  Pessoa(this._idade, this._nome, this._peso, this._altura);

  Pessoa.nascer(this._nome, this._peso, this._idade, this._altura) {
    this._idade = 0;
    this._altura = .4;

    print("Bebe ${this._nome}");
  }

  set altura(double altura) => this._altura = altura;

  set peso(double peso) => this._peso = peso;

  set nome(String nome) => this._nome = nome;

  set idade(int idade) => this._idade = idade;

  double get altura => this._altura;

  double get peso => this._peso;

  int get idade => this._idade;

  String get nome => this._nome;

  void fazerAniversario() {
    this._idade++;
  }

  void atualizarPeso(double peso) {
    this._peso += peso;
  }
}

class Animal {
  String nome;
  double peso;

  Animal(this.nome, this.peso);

  void comer() {
    print("Comeu");
  }

  void andar() {
    print("Andou");
  }
}
