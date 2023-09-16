# 기본
### 변수 설정하기 및 정수, 실수 타입
```dart
// 코드 한 줄이 끝날 때마다 ; 해주기
  print('Hello Code Factory');
  
  // variable
  var name = "코드 팩토리";
  print(name);
  
  name = "플러터 프로그래밍";
  print(name);
  
  // 정수
  // integer
  int number1 = 10;
  int number2 = 4;
  
  print(number1 + number2);
  print(number1 / number2);
  print(number1 * number2);
  
  // 실수
  // double
  double number1 = 2.5;
  double number2 = 0.5;
```

### Bool 타입 및 String 타입
```dart
// Boolean
  bool isTrue = true;
  bool isFalse = false;
  
  print(isTrue);
  print(isFalse);
  
  // 글자 타입
  // String
  
  String name = '레드벨벳';
  String name2 = '코드팩토리';
  print(name + name2);
  print(name + ' ' + name2);
  
  print('${name} ${name2}');
  print('$name $name2');
```

### Dynamic 타입
```dart
// 어느 타입이든 들어갈 수 있다.
  dynamic name = '코드팩토리';
  // name을 2(integer)로 바꿀 수 있다.
  name = 2
```

### nullable 타입
```dart
// nullable - null이 될 수 있다.
  // non-nullable - null이 될 수 없다.
  // null - 아무런 값도 있지 않다.
  String? name = '코드팩토리';
  name = null;
  print(name!);
```

### final과 const
```dart
// final로 선언하면 변경이 불가능하다. -> var를 생략 가능
  // 빌드 타임에 알고 있을 필요가 없다.
  // const로 선언하면 변경이 불가능하다. -> var를 생략 가능
  // 빌드 타임에 알고 있어야된다.
  final name = '코드 팩토리';
  const name2 = '코드 팩토리';
  
  final DateTime now = DateTime.now(); // 가능
  const DateTime now = DateTime.now(); // 불가능

  print(now); 
```
### 사칙 연산
```dart
double number = 2.0;
  
  // 나머지 
  print(number%2); // 0
  
  // ++
  number ++;
  print(number); // 3
  
  number += 1;
  print(number); // 4
    
  // --
  number --;
  print(number); // 3
  
  // *=
  number *= 2;
  print(number); // 6
  
  // /=
  number /= 1;
  print(number); // 6
```

### 대소관계
<img width="748" alt="image" src="https://github.com/gdsc-ys/mobile-wwl/assets/85781941/d61f834c-d9dd-4cec-a98a-bafa74b5836d">

### 타입확인
<img width="748" alt="image" src="https://github.com/gdsc-ys/mobile-wwl/assets/85781941/e62486c7-258e-4975-8434-35d692a46512">

### 논리 연산자
<img width="748" alt="image" src="https://github.com/gdsc-ys/mobile-wwl/assets/85781941/fcd2bbe9-bc85-45bc-a828-4b4ea9d6bc6a">

## Collection 타입
### 리스트
<img width="849" alt="image" src="https://github.com/gdsc-ys/mobile-wwl/assets/85781941/ce8e1fed-a52b-40d4-a571-563742a0e4a8">

### map
<img width="849" alt="image" src="https://github.com/gdsc-ys/mobile-wwl/assets/85781941/4de9e119-cb6b-44ff-8b90-cc0c7adb3dbe">

- 값 추가
```dart
isHarryPotter['SpiderMan'] = true;
```

- 값 삭제
```dart
isHarryPotter.remove("Harry Potter");
```

- key 값/value 값 들고오기
```dart
isHarryPotter.keys
isHarryPotter.values
```

### Set
- 중복된 값 처리해주기
<img width="849" alt="image" src="https://github.com/gdsc-ys/mobile-wwl/assets/85781941/1becf539-1d3d-490b-8e07-71d6defe79dc">

## 흐름 제어문
### if
<img width="849" alt="image" src="https://github.com/gdsc-ys/mobile-wwl/assets/85781941/3bd0a164-7dae-4ce4-8efd-5ec39dd42735">

### switch문
<img width="849" alt="image" src="https://github.com/gdsc-ys/mobile-wwl/assets/85781941/74519fcb-7d01-4f15-8f6f-44062ee4113b">

### for문
```dart
// for loop
  // i가 어디서 부터 시작되는디
  // i가 9까지
  // i를 1씩 더한다.
  for(int i = 0; i<10; i++) {
    print(i)
  }
```
<img width="849" alt="image" src="https://github.com/gdsc-ys/mobile-wwl/assets/85781941/749f7fbe-7901-4c54-8787-09fd6951ae5c">

### while문
- continue는 Swift와 동일하다.
<img width="849" alt="image" src="https://github.com/gdsc-ys/mobile-wwl/assets/85781941/3e0d0f3a-0b07-4111-b05f-701f7c8f3f1d">

### enum
<img width="849" alt="image" src="https://github.com/gdsc-ys/mobile-wwl/assets/85781941/5d324c39-e8e1-4a93-89fb-d8edc3fe5d23">

## 함수
<img width="849" alt="image" src="https://github.com/gdsc-ys/mobile-wwl/assets/85781941/b4759ad0-2c7f-426d-bc76-3be3daaa2b73">

- Positional parameter
    - 순서가 중요한 파라미터
- Optional parameter
    - 있어도 되고 없어도 되는 파라미터 → [ ]로 묶어준다.
    - 그리고 ? 혹은 default 값을 줘야된다.

<img width="849" alt="image" src="https://github.com/gdsc-ys/mobile-wwl/assets/85781941/3de59731-6c2a-4d3e-850b-dc93db13543c">

- Named paramter
    - 순서가 중요하지 않다.
    - Optional 하게도 가능하다! → required keyword를 빼주기

### 반환 값
- 함수 정의 부 맨 앞에 Type 명시하기
<img width="849" alt="image" src="https://github.com/gdsc-ys/mobile-wwl/assets/85781941/6b30e657-f47b-40a5-82bc-c253cb246bc5">

`arrow function`
```dart
int addNumber(int x, {
    required int y,
    int z = 30,
  }) => x + y + z;
```

## Typedef
```dart
void main() {
  Operation operation = add;
  
  int result = operation(10, 20, 30);
  
  print(result);
} 

typedef Operation = int Function(int x, int y, int z);

// 더하기
int add(int x, int y, int z) => x + y + z;
  
  
// 빼기
int subtract(int x, int y, int z) => x - y - z;
```
```dart
void main() {
  Operation operation = add;
  
  int result = operation(10, 20, 30);
  
  print(result);
  
  int result23 = calculate(10, 20, 30, add);
  
  print(result23);
} 

typedef Operation = int Function(int x, int y, int z);

// 더하기
int add(int x, int y, int z) => x + y + z;
  
  
// 빼기
int subtract(int x, int y, int z) => x - y - z;
  
// 계산
int calculate(int x, int y, int z, Operation operation) {
  return operation(x, y, z);
}
```
