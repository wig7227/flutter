void main() {
  A a = A();
  Lecture<A> lecture3 = Lecture(a, '이름');

  Lecture<String> lecture1 = Lecture('user01@naver,com', '네이버');
  lecture1.printIdType();
}


class Lecture<T> {
  final T id;
  final String name;

  Lecture(this.id, this.name);

  printIdType() {
    print(id.runtimeType);
  }
}

class A {

}
