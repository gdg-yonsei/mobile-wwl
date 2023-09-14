/**
 * Introduction to Dart 문서의 내용을 실습한 파일입니다.
 * https://dart.dev/language
 */

/**
 * 어플리케이션 엔트리포인트로 작용
 * 
 * args 파라미터로 argument들을 받아올 수 있다.
 */
void main(List<String> args) {
  print('Hello, World!');

  // ## Variables
  // 변수의 타입을 지정해주지 않아도 자동으로 추론해서 적용
  var name = 'Voyager I';
  var year = 1977;
  var antennaDiameter = 3.7;
  var flybyObjects = ['Jupiter', 'Saturn', 'Uranus', 'Neptune'];
  var image = {
    'tags': ['saturn'],
    'url': 'path_to_saturn.jpg'
  };

  // ## Control Flows

  // If Statements
  if (year >= 2001) {
    print('21st Century');
  } else if (year >= 1901) {
    print('20th century');
  }

  // ## Loops

  var message = StringBuffer('Dart is fun');
  for (var i = 0; i < 5; i++) {
    message.write('!');
  }

  // This List is Iterable
  var callbacks = [];
  for (var i = 0; i < 5; i++) {
    if (i == 2) {
      continue; // Iteration을 중단하고 다음 Iteration으로 넘어감
    }
    callbacks.add(() => print(i));
  }
  callbacks.forEach((c) => c());

  // `final` 키워드는 런타임에 지정할 수 있는 immutable.
  for (final object in flybyObjects) {
    print(object);
  }

  while (year < 2016) {
    year += 1;
  }
}
