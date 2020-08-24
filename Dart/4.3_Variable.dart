/*

(1) var 사용
Dart에서는 타입 추론 기능을 가지고 있어서 자료형을 명시하지 않아도 자료형을 지정해준다.

(2) 자료형 명시

(3) Final 명시
final을 추가로 작성하면 변수를 절대 변경하지 않을것이라는 의도를 담을 수 있음 -> 오직 한번만 설정됨!

  (에러 발생 예시)
  final test = 1;
  test = 3;

(4) const 사용
한번 설정되면 절대 값을 변경할 수 없음

*/

// (1) var 사용
var greeting = 'Hello, Flutter!!';

// (2) 자료형(String) 명시
String nickname = 'dhlife09';

// (3) final 사용
final numbers = [1, 2, 3];

// (4) const 사용
const language = 'Dart';
//language = 'Dartt'; -> 이렇게 하면 에러 발생!

void main() {
  print('Dart_OK!');
}
