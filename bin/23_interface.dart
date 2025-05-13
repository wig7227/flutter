void main() {
  Boygroup bts = Boygroup('BTS');
  Girlgroup redVelvet = Girlgroup('레드벨벳');

  bts.sayName();
  redVelvet.sayName();

  print(bts is IdolInterface);
  print(bts is Boygroup);
}

abstract class IdolInterface {
  String name;
  IdolInterface(this.name);
  sayName();
}

class Boygroup implements IdolInterface {
  @override
  String name;
  Boygroup(this.name);

  @override
  sayName() {
    throw UnimplementedError();
  }

}


class Girlgroup implements IdolInterface {
  @override
  String name;
  Girlgroup(this.name);

  @override
  sayName() {
    throw UnimplementedError();
  }

}