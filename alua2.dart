int result = 100;

void main(List<String> args) {
  User client = new User("Sebastiao Afonso Domingos", 1998, "12345678",
      new Endereco("Luanda", "Rangel"));

  List<Contato> contatos = [
    new Contato("Email", "email@gmail.com"),
    new Contato("Contacto", "902121212")
  ];
  client.contatos = contatos;

  List<Product> produtos = [
    new Product("Arroz", 200.2, 2),
    new Product("Massa", 200.2, 2),
    new Product("Fuba", 200.2, 2)
  ];
  client.comprar(produtos);

  client.perfil();

  print(client.login(client.contatos[0].valor, client.senha).token);
}

class User {
  String nome = "";
  int ano = 00;
  String senha;
  Endereco endereco;
  List<Contato> contatos = [];

  User(this.nome, this.ano, this.senha, this.endereco);

  int get idade {
    var idad = (new DateTime.now().year) - this.ano;
    return idad;
  }

  void comprar(List<Product> prods) {
    print("Lista da compra :");
    var precoTotal = 0.0;

    print(
        "Nome ------------------------------- Quantidade ----------------------- Preco------------------------------------------Preco Total");
    for (var i = 0; i < prods.length; i++) {
      precoTotal += prods[i].quantidade * prods[i].preco;
      print(
          "${prods[i].nome} ------------------------------- ${prods[i].quantidade} ----------------------- ${prods[i].preco}---------------------------------------------${prods[i].quantidade * prods[i].preco}");
    }

    print("\n \n Preco total da Compra : $precoTotal");
  }

  ResultadoLogin login(String email, String senha) {
    return new ResultadoLogin(this.nome, email,
        "qwertyuiopafjkl,mnbvcx2345670poiuytdnm,md.s,dfahdifuadsuafsdnamds");
  }

  void perfil() {
    print("\n");
    print("Perfil do usuario");
    print("Nome : $nome");
    print("Ano de naiscimento : ${this.ano}");
    print("Idade : ${this.idade}");
    print("Contatos : ");
    for (var i = 0; i < this.contatos.length; i++) {
      print("${contatos[i].nome}  :  ${contatos[i].valor}");
    }
    print(
        "Endereco \nMunicipio : ${this.endereco.numinicipio} \nDistrito : ${this.endereco.distrito}");
  }
}

class Product {
  String _nome;
  double _preco;
  int _quantidade;

  Product(this._nome, this._preco, this._quantidade);

  int get quantidade {
    return this._quantidade;
  }

  double get preco {
    return this._preco;
  }

  String get nome {
    return this._nome;
  }

  void set nome(String nome) {
    this._nome = nome;
  }

  void set quantidade(int qnt) {
    this._quantidade = qnt;
  }

  void set preco(double preco) {
    this._preco = preco;
  }

  double precoTotal() {
    return this._quantidade * this._preco;
  }
}

class Endereco {
  String numinicipio, distrito;
  Endereco(this.numinicipio, this.distrito);
}

class ResultadoLogin {
  String nome = "";
  String email = "";
  String token = "";

  ResultadoLogin(this.nome, this.email, this.token);
}

class Contato {
  String nome;
  String valor;

  Contato(this.nome, this.valor);
}

void minhaFunction(String nome, {String? telefone}) {
  print("Nome :$nome , Telefone : $telefone");
}

int soma(int num1, int num2) {
  result = num1 + num2;
  return result;
}
