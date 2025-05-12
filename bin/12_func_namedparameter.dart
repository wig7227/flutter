/*
    named parameter : 이름이 있는 파라미터. 순서가 필요 없음
 */
void main() {
  addNumbers(x: 10, y: 25, z: 20);
  print('-------------------------');
  addNumbers2(x: 10, y: 25, z:20);
  addNumbers2(x: 10, y: 25);
  print('------------------------');
  addNumbers3(x: 5, y:10, z:15);
  print('-----------------------');
  addNumbers4(20, z:30, y:60);
  addNumbers4(100, y:60);
  addNumbers4(200,z:40, y:50);
}
// 파라미터 넣는 곳을 {} 중괄호로 묶고, required 키워드르 붙여준다
addNumbers({required int x, required int y, required int z}) {
  int sum = x + y + z;

  print(sum);
  print('$x + $y + $z = $sum');
}

addNumbers2({required int x,
             required int y,
             int z = 50}) {
  int sum = x + y + z;
  print('$x + $y + $z = $sum');
}

// return이있는 함수
addNumbers3({required int x,
             required int y,
             required int z}) {
  int sum = x + y + z;
  print('x: $x');
  print('y: $y');
  print('z: $z');
  print('$x + $y + $z = $sum');
}

addNumbers4(int x, {required int y, int z = 50}) {
  int sum = x + y + z;
  print('x: $x');
  print('y: $y');
  print('z: $z');
  return sum;
}

addNumbers5(int x, {required int y, int z = 50}) {
  int sum = x + y + z;
  return sum;
}

// addNumbers5를 화살표 함수로
int addNumbers6(int x, {required int y, int z = 50}) => x + y + z;