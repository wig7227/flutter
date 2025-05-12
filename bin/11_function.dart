/*
    parameter (argment) : 순서와 갯수가 동일.
    optional parameter : 파라미터의 갯수가 미지수일떄
 */
void main() {
  function1();
  addNumbers();
}

function1() {
  print('function1 실행');
}

// 3개의 숫자를 더해서 짝수인지 홀수 인지 알려주는 함수
addNumbers() {
  int x = 10;
  int y = 23;
  int z = 38;
  int sum = x + y + z;

  print('x: ' '$x');
  print('y: ' '$y');
  print('z: ' '$z');
  if( sum % 2 == 0){
    print('합계는 짝수 입니다.');
  } else {
    print('합계는 홀수 입니다.');
  }
}

// addNumbers2(int x, [int? y, int? z]) {
//   int sum = x + y + z;
//   if(sum % 2)
//
// }

// addNumber3(int x, [int y, int z]) {
//   //파라미터가 안들어올 경우 null이 되므로 오류
//   int sum = x + y + z;
// }
