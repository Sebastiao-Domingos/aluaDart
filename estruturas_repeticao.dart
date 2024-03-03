void main(List<String> args) {
  int num = 4;

  for (var i = 2; i < 13; i++) {
    print("$i");
    int count = 1;
    do {
      print("$i X $count = ${num * count}");
      count++;
    } while (count < 12);
    print("\n");
  }
}
