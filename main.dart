import 'class.dart';
import 'heranca.dart';

void main(List<String> args) {
  Pessoa pessoa = new Pessoa(23, "Sebastiao Afonso Domingos", 63, 1.7);
  print(pessoa.idade);

  pessoa.fazerAniversario();
  print(pessoa.idade);
  print("Peso do ${pessoa.nome} : ${pessoa.peso} Kg");

  pessoa.atualizarPeso(-3.4);
  print("Peso do ${pessoa.nome} : ${pessoa.peso} Kg");

  pessoa.altura = 2;
  print("A altura do ${pessoa.nome} e : ${pessoa.altura}");

  print(" ----------------------------------------");

  Pessoa nene = new Pessoa.nascer("Enzo", 1.2, 0, .4);

  print(nene.peso);

  print("------------------------- Heranca -----------------------------");

  Homem homem = new Homem("Sebastiao Afonso Domingos", 63.3, "Programador");

  print(homem.peso);

  homem.andar();

  homem.comer();

  String resul = homem.toString();

  print(resul);
}
