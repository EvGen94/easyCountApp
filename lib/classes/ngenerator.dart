import 'dart:math';

class Generator {
  List<int> generateRandomNumber(bool swich) {
    var random = Random();
    // List list = List<int>(3);
    List<int> list = List(3);
    int n1, n2, n3;
    if (swich = true) {
      n1 = random.nextInt(99999) + 11; //range between 11 and 99.
      n2 = random.nextInt(99999) + 11; //range between 11 and 99.
    } else {
      n1 = random.nextInt(5) + 11;
      n2 = random.nextInt(5) + 11;
    }
    if (n1 + n2 > 99) {
      n1 > n2 ? n1 = 99 - n1 : n2 = 99 - n2;
    }
    n3 = random.nextInt(2);
    list = [n1, n2, n3];

    return list;
  }
}
