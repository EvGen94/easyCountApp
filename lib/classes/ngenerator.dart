import 'dart:math';

class Generator {


  List<int>  generateRandomNumber() {
    var random = Random();
    // List list = List<int>(3);
    List<int> list = List(3);
    int n1, n2, n3;
    n1 = random.nextInt(100);
    n2 = random.nextInt(100);
    n3 = random.nextInt(2);
   list = [n1,n2,n3];

   return list;
  }
}



