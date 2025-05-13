void main() {
  BoyGroup bts = BoyGroup(name: "BTS", memberCount: 9);
  bts.sayName();
  bts.sayMemberCount();
  bts.sayMale();

  print(bts is Idol);
  print(bts is BoyGroup);
}

class Idol {
  String name;
  int memberCount;

  Idol({required this.name, required this.memberCount});

  sayName() {
    print('저는 $name 입니다');
  }

  sayMemberCount() {
    print('$name은 $memberCount명의 멤버로 구성되어 있습니다');
  }

  int calulate() {
    return memberCount * 2;
  }
}



class BoyGroup extends Idol {
  // BoyGroup(String name, int memberCount)
  //   : super(name: name, memberCount: memberCount);
  BoyGroup({required super.name, required super.memberCount});

  //함수선언
  sayMale() {
    print('$name은/는 남자그룹 입니다');
  }

  @override
  int calulate() {
    //return memberCount * 4;
    return super.calulate() * 4;
  }
}

class GirlGroup extends Idol {
  // BoyGroup(String name, int memberCount)
  //   : super(name: name, memberCount: memberCount);
  GirlGroup({required super.name, required super.memberCount});
}