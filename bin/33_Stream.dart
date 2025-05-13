/*
  - Stream : 내가 스트림을 닫을 때 까지 받을 수 있음.
 */

import 'dart:async';
/*
void main() {
  final controller = StreamController();
  final stream = controller.stream; // 1번만 스트림을 사용할 수 있다

  final streamListener1 = stream.listen((val) {
    print('Listener1 : $val');
  });

  controller.sink.add(1);
  controller.sink.add(2);
  controller.sink.add(3);

}
*/

// 여러번 스트림 가능 : asBradcastStream()
/*
void main() {
  final controller = StreamController();
  final stream = controller.stream; // 1번만 스트림을 사용할 수 있다

  final streamListener1 = stream.listen((val) {
    print('Listener1 : $val');
  });

  final streamListener2 = stream.listen((val) {
    print('Listener2 : $val');
    print('------------------------------');
  });

  controller.sink.add(1);
  controller.sink.add(2);
  controller.sink.add(3);

}
*/

void main() {
  final controller = StreamController();
  final stream = controller.stream.asBroadcastStream(); // 1번만 스트림을 사용할 수 있다

  final streamListener1 = stream.where((val) => val % 2 == 0).listen((val){
    print('짝수 Listener1 : $val');
  });

  final streamListener2 = stream.where((val) => val % 2 == 1).listen((val){
    print('홀수 Listener2 : $val');
  });

  controller.sink.add(1);
  controller.sink.add(2);
  controller.sink.add(3);
  controller.sink.add(4);
  controller.sink.add(5);
  controller.sink.add(6);
  controller.sink.add(7);
  controller.sink.add(8);
  controller.sink.add(9);
  controller.sink.add(10);
  controller.sink.add(11);
  controller.sink.add(12);
}