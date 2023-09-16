void main(List<String> args) {
  // both integer and double are subtypes of num
  // num x_1 = 1;

  // integer literals
  var x = 1;
  var hex = 0xDEADBEEF; // 16진수 표현도 가능

  // double literals
  var y = 1.1;
  var exponents = 1.42e5;

  // Type Conversions

  // String -> int
  var one = int.parse('1');
  assert(one == 1);

  // String -> double
  var onePointOne = double.parse('1.1');
  assert(onePointOne == 1.1);

  // int -> String
  String oneAsString = 1.toString();
  assert(oneAsString == '1');

  // double -> String
  String piAsString = 3.14159.toStringAsFixed(2);
  assert(piAsString == '3.14');

  // String

  var s = 'string interpolation';

  assert('Dart has $s, which is very handy.' ==
      'Dart has string interpolation, '
          'which is very handy.');
  assert('That deserves all caps. '
          '${s.toUpperCase()} is very handy!' ==
      'That deserves all caps. '
          'STRING INTERPOLATION is very handy!');

  var s1 = 'Single quotes work well for string literals.';
  var s2 = "Double quotes work just as well.";
  var s3 = 'It\'s easy to escape the string delimiter.';
  var s4 = "It's even easier to use the other delimiter.";

  var s5 = 'String '
      'concatenation'
      " works even over line breaks.";
  assert(s1 ==
      'String concatenation works even over '
          'line breaks.');

  var s6 = 'The + operator ' + 'works, as well.';
  assert(s2 == 'The + operator works, as well.');

  // Runes
  // Used to represent Unicode code points.
  // use characters package to manipulate runes

  var clapping = '\u{1f44f}';
  var clapping_2 = '👏';
  assert(clapping == clapping_2);
}
