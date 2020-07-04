/*

Dart에서의 자료형

int: 정수
double: 부동 소수점 숫자
String: 문자열
bool: 불리언(참과 거짓)
List: 리스트(중복 허용, 순서가 있는 자료구조)
Set: 셋(집합) -> 중복허용x, 순서가 없는 자료구조
Map: 맵, 키-값 쌍으로 구성된 자료구조

*/

int a = 1;
double b = 1.2;
String c = 'Hello?';
bool d = true;
List<int> numbers = [1, 2, 3, 2];
List<String> strings = ['A', 'B', 'C', 'A'];
//Set<int> numberSet = [1, 2, 3, 2];  -> 에러 발생 확인 필요 !
Map<String, int> maps = {
  'A': 22,
  'B': 33,
  'C': 44,
};

void main() {
  print(":D");
}
