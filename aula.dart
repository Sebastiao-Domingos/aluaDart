late String nome;
void main() {
  int? idade1 = idade(1998);
  nome = 'Sebastaiao Afonso Domingos';

  print("Sr(a) $nome tens $idade1 anos de idade.");

  print(calculator(4, 4, "+"));

  print(nome);
}

int idade(int ano) {
  return new DateTime.now().year - ano;
}

double calculator(double a, double b, String operator) {
  switch (operator) {
    case "x":
      return a * b;
    case "X":
      return a * b;
    case "*":
      return a * b;
    case "+":
      return a + b;
    case "-":
      return a - b;
    case ":":
      return a / b;
    default:
      {
        return a % b;
      }
  }
}
