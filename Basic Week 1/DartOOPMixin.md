# OOP & Mixin
## `OOP`

```dart
void main() {
  Idol blackPink = Idol(
    '블랙핑크',
    ['지수', '제니']
  );
  
  print(blackPink.name);
  blackPink.sayHello();
}

class Idol {
//   String name = '블랙핑크';
//   List<String> members = ['지수', '제니'];
  String name;
  List<String> members;
  
  Idol(String name, List<String> members)
    : this.name = name,
      this.members = members;
    
  void sayHello() {
    print('안녕하세요 ${this.name}입니다');
  }
  
  void introduce() {
    print('저희 멤버는 ${this.members} 있습니다.');
  }
}
```

- 아래와 같이도 구현할 수 있다.
    - 바로 parameter로 넣어주기

```dart
class Idol {
//   String name = '블랙핑크';
//   List<String> members = ['지수', '제니'];
  String name;
  List<String> members;
  
  Idol(this.name, this.members);
    
  void sayHello() {
    print('안녕하세요 ${this.name}입니다');
  }
  
  void introduce() {
    print('저희 멤버는 ${this.members} 있습니다.');
  }
}
```

- 아래와 같이 List로도 받을 수 있다.

```dart
void main() {
  Idol blackPink = Idol.fromList(
  [['지수', '제니'],
   '블랙핑크'
  ]
  );
  print(blackPink.members);
}

class Idol {
//   String name = '블랙핑크';
//   List<String> members = ['지수', '제니'];
  String name;
  List<String> members;
  
//   Idol(this.name, this.members);
  Idol.fromList(List values)
    : this.members = values[0],
      this.name = values[1];
    
  void sayHello() {
    print('안녕하세요 ${this.name}입니다');
  }
  
  void introduce() {
    print('저희 멤버는 ${this.members} 있습니다.');
  }
}
```

---

**immutable 상수 만들기**

- `final`

```dart
void main() {
  Idol blackPink = Idol.fromList(
  [['지수', '제니'],
   '블랙핑크'
  ]
  );
  print(blackPink.members);
}

class Idol {
//   String name = '블랙핑크';
//   List<String> members = ['지수', '제니'];
  final String name;
  final List<String> members;
  
//   Idol(this.name, this.members);
  Idol.fromList(List values)
    : this.members = values[0],
      this.name = values[1];
    
  void sayHello() {
    print('안녕하세요 ${this.name}입니다');
  }
  
  void introduce() {
    print('저희 멤버는 ${this.members} 있습니다.');
  }
}
```

- `const constructor`를 구현하기

```dart
void main() {
  Idol blackPink = const Idol(
  '블랙핑크',
  ['지수', '제니']);
  print(blackPink.members);
}

class Idol {
//   String name = '블랙핑크';
//   List<String> members = ['지수', '제니'];
  final String name;
  final List<String> members;
  
  const Idol(this.name, this.members);
    
  void sayHello() {
    print('안녕하세요 ${this.name}입니다');
  }
  
  void introduce() {
    print('저희 멤버는 ${this.members} 있습니다.');
  }
}
```
----
`Getter와 Setter`

```dart
class Idol {
//   String name = '블랙핑크';
//   List<String> members = ['지수', '제니'];
  String name;
  List<String> members;
  
  Idol(this.name, this.members);
    
  void sayHello() {
    print('안녕하세요 ${this.name}입니다');
  }
  
  void introduce() {
    print('저희 멤버는 ${this.members} 있습니다.');
  }
  
  // getter
  String get firstMember {
    return this.members[0];
  }
  
  // setter -> 하나의 파라미터만 강제한다.
  set firstMember(String name) {
    this.members[0] = name;
  }
}
```

`private 키워드`

- 다른 파일에서 사용할 수 없다.
- `_` 을 붙혀준다.

 

```dart
void main() {
  _Idol blackPink = _Idol(
  '블랙핑크',
  ['지수', '제니']);
  print(blackPink.members);
}

class _Idol {
//   String name = '블랙핑크';
//   List<String> members = ['지수', '제니'];
  String name;
  List<String> members;
  
  _Idol(this.name, this.members);
    
  void _sayHello() {
    print('안녕하세요 ${this.name}입니다');
  }
  
  void introduce() {
    print('저희 멤버는 ${this.members} 있습니다.');
  }
  
  // getter
  String get firstMember {
    return this.members[0];
  }
  
  // setter -> 하나의 파라미터만 강제한다.
  set firstMember(String name) {
    this.members[0] = name;
  }
}
```

## 상속

```dart
void main() {
  print("---------Idol--------");
  Idol apink = Idol(name: "에이핑크", membersCount: 5);
  apink.sayName();
  apink.sayMembersCount();
  
  print("--------BoyGroup-------");
  BoyGroup bts = BoyGroup('BTS', 7);
  
  print("--------GirlGroup-------");
  GirlGroup redVelvet = GirlGroup('RedVelvet', 5);
  
  print(apink is Idol); // true
}

// 상속
class Idol {
  String name;
  int membersCount;

  Idol({
    required this.name,
    required this.membersCount,
  });

  void sayName() {
    print('저는 ${this.name}입니다.');
  }

  void sayMembersCount() {
    print('${this.name}은 ${this.membersCount}명의 멤버가 있습니다. ');
  }
}

class BoyGroup extends Idol {
  BoyGroup(
    String name,
    int membersCount,
  ) : super(
          name: name,
          membersCount: membersCount,
        );

  void sayMale() {
    print("저는 남자 아이돌입니다");
  }
}

class GirlGroup extends Idol {
  GirlGroup(
    String name,
    int membersCount,
  ) : super(
          name: name,
          membersCount: membersCount,
        );

  void sayFemale() {
    print("저는 여자 아이돌입니다");
  }
}
```

`override`

```dart
void main() {
  TimesTwo tt = TimesTwo(2);

  print(tt.calculate());

  TimesFour tf = TimesFour(2);
  print(tf.calculate());
}

class TimesTwo {
  final int number;

  TimesTwo(
    this.number,
  );

  int calculate() {
    return number * 2;
  }
}

class TimesFour extends TimesTwo {
  TimesFour(
    int number,
  ) : super(number);
  
  @override
  int calculate() {
    return super.number * 4;
  }
}
```

- 아래와 같이도 구현할 수 있다.

```dart
void main() {
  TimesTwo tt = TimesTwo(2);

  print(tt.calculate());

  TimesFour tf = TimesFour(2);
  print(tf.calculate());
}

class TimesTwo {
  final int number;

  TimesTwo(
    this.number,
  );

  int calculate() {
    return number * 2;
  }
}

class TimesFour extends TimesTwo {
  TimesFour(
    int number,
  ) : super(number);
  
  @override
  int calculate() {
    return super.calculate() * 2;
  }
}
```

- static 키워드
- instance가 직접 사용할 수도 있다.

```dart
void main() {
  Employee seulgi = Employee('슬기');
  Employee chorong = Employee('초롱');

  seulgi.name = '코드 팩토리';
  
  Employee.building = '오투타워'; // Employee 자체의 building을 이름을 바꾼다
}

class Employee {
  // static은 Swift에서의 타입 프로퍼티이다!
  static String? building;

  // 알바생 이름
  String name;

  Employee(
    this.name,
  );

  void printNameAndBuilding() {
    print("제 이름은 $name입니다. $building 건물에서 근무하고 있습니다.");
  }

  static void printBuilding() {
    print('저는 $building 건물에서 근무중입니다.');
  }
}
```

- interface

```dart
class IdolInterface {
  String name;
  IdolInterface(this.name);
  void sayName() {}
}

class BoyGroup implements IdolInterface {
  String name;
  BoyGroup(this.name);
  void sayName(){}
}
```

```dart
void main() {
  BoyGroup bts = BoyGroup("BTS");
  GirlGroup redVelvet = GirlGroup('레드벨벳');
  
  redVelvet.sayName();
}

// abstract로 만들면 인터페이스를 인스턴스화 할 수 없다.
abstract class IdolInterface {
  String name;
  IdolInterface(this.name);
  void sayName();
}

class BoyGroup implements IdolInterface {
  String name;
  BoyGroup(this.name);
  void sayName(){}
}

class GirlGroup implements IdolInterface{
  String name;
  GirlGroup(this.name);
  void sayName(){
    print('제 이름은 $name입니다.');
  }
}
```

---

`제네릭`

```dart
void main() {
  Lecture<String> lecture1 = Lecture("123", "lecture1");
  Lecture<int> lecture1 = Lecture(123, "lecture1");
}

class Lecture<T> {
  final T id;
  final String name;

  Lecture(this.id, this.name);

  void printIDType() {
    print(id.runtimeType);
  }
}
```
