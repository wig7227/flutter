/*
    - where()함수 : 결과가 true인거만 가져옴(filter와 동일)
 */
void main() {
  List<Map<String, String>> people = [
    {'name' : '로제', 'group' : '블랙핑크'},
    {'name' : '지수', 'group' : '블랙핑크'},
    {'name' : '정목', 'group' : 'BTS'},
    {'name' : '뷔', 'group' : 'BTS'}
  ];
  print(people);

  final blackpink = people.where((x) => x['group'] == '블랙핑크');
  final bts = people.where((x) => x['group'] == '블랙핑크');

  print(blackpink);
  print(bts);
}