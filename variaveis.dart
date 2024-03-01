void main(List<String> args) {
  const String nome = "Sebastiao Afonso Domingos";
  print(nome);

  const Object i = 10;

  print(i);

  List list = [i as int];
  list.add(3);
  list.remove(10);
  print(list);

  print((5 / 2));

  assert(4 != 5);

  print("'''''''''''''''''''''''''object'''''''''''''''''''''''''");
  int value = 10;
  int? b = null;
  b ??= value;

  print(nome1("Anfonso"));

  var str = StringBuffer();
  str.write("Sebastiao Afonso Domingos");
  str.write("\nSebastiao Afonso");

  print(str);

  print("-------------------------------------------------------------");
  (String, int) record;
  record = ("Sebas", 32);

  print(record.$1);
}

String nome1(String? no) => no ?? "Sebastiao";

class Persson {
  final int ano;
  final String nome;

  const Persson(this.ano, this.nome);

  int idade() {
    return new DateTime.now().day - this.ano;
  }
}
