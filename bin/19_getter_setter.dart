void main() {
  Idol idol1 = Idol('블랙핑크',['리사','로제']);
  print(idol1.name);
  idol1.introduce();

  Idol idol2 = Idol.fromList([['정국','뷔','진'],'BTS']);
  print(idol2.members);
  idol2.sayHello();
}

class Idol {
  final String name;
  final List<String> members;

  const Idol(this.name, this.members);

  // Idol.con(List values)
  //
  // Idol(this.name, this.members);

  Idol.fromList(List values)
      : this.members = values[0],
        this.name = values[1];

  sayHello() {
    String name = 'hong';
    print('안녕하세요 ${this.name} 입니다');
  }

  introduce() {
    print('저의 멤버는 $members 입니다.');
  }
}

// gettter
String get fisrtMember {
  return 'sksk';
}

