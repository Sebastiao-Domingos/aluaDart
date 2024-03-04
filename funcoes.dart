void main(List<String> arguments) {
  print(arguments);

  var list = [1, 2, 3, 4, 5];

  list.forEach(printElement);

  print("oalsdfadsfadfa--------------------------------------------");
  list
      .where((element) => element == 2)
      .forEach((element) => print("Hi , found"));

  print(loudify("Sebastiao Afonso Domingos"));

  var fruits = ["apples", "bananas", "oranges"];

  fruits
      .map((e) => e.toUpperCase())
      .forEach((element) => print('$element : ${element.length}'));
}

void printElement(int element) {
  print(element);
}

var loudify = (msg) => "$msg !!!!!!!!";

void calculateArea({int lado1 = 1, required int? lado2}) {
  if (lado2 != null && lado1 != lado2) {
    print("A area do rectangulo  e : ${lado1 * lado2}");
  } else if (lado2 == null) {
    print("A  area do quadrado e : ${lado1 * lado1}");
  } else {
    print("A  area do quadrado e : ${lado2 * lado2}");
  }
}

String sand({String? from, String? msg, String? device}) {
  var result = '$from says $msg';

  if (device != null) {
    return '$result with a $device';
  }

  return result;
}

Iterable<int> naturalsTo(int n) sync* {
  int k = 0;
  while (k < n) yield k++;
}

Stream<int> asyncNaturalsTo(int n) async* {
  if (n > 0) {
    yield n;
    yield* asyncNaturalsTo(n - 1);
  }
}
