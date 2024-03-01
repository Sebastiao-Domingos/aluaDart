void main() {
  int idade1 = idade(1998);
  String nome = 'Sebastaiao Afonso Domingos';

  print("Sr(a) $nome tens $idade1 anos de idade.");
}

int soma(int a, int b) {
  return a + b;
}

int idade(int ano) {
  return new DateTime.now().year - ano;
}
