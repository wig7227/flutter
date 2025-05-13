/*
void main() {
  // print(calculate(3));
  calculate(2).listen((val) {
    print('calculate(2) : $val');
  });
}

calculate(int num) async*{
  for(int i=0; i<5; i++) {
    yield i*num;

    await Future.delayed(Duration(seconds: 1));
  }
}
*/

// 1초마다 호출
void main() {
  // print(calculate(3));
  calculate(2).listen((val) {
    print('calculate(2) : $val');
  });

  calculate(3).listen((val) {
    print('calculate(3) : $val');
  });
}

calculate(int num) async*{
  for(int i=0; i<5; i++) {
    yield i*num;

    await Future.delayed(Duration(seconds: 1));
  }
}