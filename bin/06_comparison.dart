// 비교 연산자 java와 동일(==, != , >= ...)
void main() {
  var num = 1;
  print(num is int);
  print(num is String);

  print(num is! int);

  10 < 30 ? print('10이 더 작다') : print('10이 더 크다');
}