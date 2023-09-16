// Unlike other collection types, records are fixed-sized, heterogeneous, and typed.

void main(List<String> args) {
  // Record type annotation in a variable declaration:
  (String, int) a;
  a = ('A string', 123);

  // Named Record Type
  ({int a, bool b}) b;
  b = (a: 123, b: true);

  // Name 한 레코드와 안한 레코드는 차이가 크다

  // Compile error! These records don't have the same type.
  // recordAB = recordXY;
  ({int a, int b}) recordAB_1 = (a: 1, b: 2);
  ({int x, int y}) recordXY_1 = (x: 3, y: 4);

  (int a, int b) recordAB2 = (1, 2);
  (int x, int y) recordXY2 = (3, 4);

  recordAB2 = recordXY2; // OK.

  // 변수 접근하기

  var newrecord = ('int', a: 1, b: 2, 'end');
  newrecord.$1; // 'int'
  newrecord.$2; // 'end'
  newrecord.a;
}
