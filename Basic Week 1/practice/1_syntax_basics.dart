// 4. Library & Imports

import 'dart:html'; //
import 'dart:async' as dart_async; // as 키워드를 이용해서 prefix를 지정해줄 수 있다.

import 'dart:collection' show HashMap; // show 키워드를 이용해서 특정 클래스만 import할 수 있다.
import 'dart:io' hide Platform; // hide 키워드를 이용해서 특정 클래스를 제외하고 import할 수 있다.

void main() {
  // 1. Variables
  var name = 'Bob'; // 변수 지정을 그냥 var로 하면 자동으로 타입을 추론해준다

  Object name_2 = 'Bob'; // 하나의 타입으로 지정하고 싶지 않을 때는 Object로 지정해줄 수 있다.
  dynamic name_3 = 'Bob'; // dynamic으로 지정해줄 수도 있다.

  String? name_4; // Nullable type
  String name_5; // Non-nullable type. Initialize를 해주지 않으면 에러가 난다.

  // late keyword를 이용하면 나중에 initialize를 해줄 수 있다. (non-nullable해도)
  // initialize를 하지 않고 사용하면 런타임 에러 발생
  late String description;

  int? lineCount;
  assert(lineCount == null); // throws an Exception if false. 프로덕션에서는 무시되는 코드

  // Immutable variable을 만드는 방법
  final name_6 = 'Bob';
  final String nickname = 'Bobby';

  // Const는 compile-time constant를 만들 때 사용한다.
  const bar = 1000000;
  const double atm = 1.01325 * bar;

  var foo = const [];

  const Object i = 3; // Where i is a const Object with an int value...
  const list = [i as int]; // Use a typecast.
  const map = {if (i is int) i: 'int'}; // Use is and collection if.
  const set = {if (list is List<int>) ...list}; // ...and a spread.

  // 2. Comments

  /**
   * multiline
   */

  ///
  /// multiline
  ///
  ///
}

// 3. MetaData
///
/// @deprecated 와 같이 메타데이터 어노테이션을 사용할 수 있다.
///
/// @deprecated, @override, @Deprecate 가 기본적으로 제공된다
///

class Television {
  /// Use [turnOn] to turn the power on instead.
  @Deprecated('Use turnOn instead')
  void activate() {
    turnOn();
  }

  /// Turns the TV's power on.
  void turnOn() {}
}

///
/// 메타데이터 어노테이션을 직접 만들수도 있다.
///
///

// @Todo('Dash', "implement") 어노테이션
class Todo {
  final String who;
  final String what;

  const Todo(this.who, this.what);
}
