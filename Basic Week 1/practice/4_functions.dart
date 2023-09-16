bool isNoble(int atomicNumber) {
  if (atomicNumber == 1) {
    return true;
  } else {
    return false;
  }
}

bool isNobleArrow(int atomicNumber) => atomicNumber == 1 ? true : false;

/// Sets the [bold] and [hidden] flags ...
void enableFlags({bool bold = false, bool hidden = false}) {
  print(bold);
  print(hidden);
}

void main(List<String> args) {
// bold will be true; hidden will be false.
  enableFlags(bold: true);
}

// [] -> optional
String say(String from, String msg, [String? device]) {
  var result = '$from says $msg';
  if (device != null) {
    result = '$result with a $device';
  }
  return result;
}

// Generators
// Useful for generating large collections of values, especially when you don’t want to allocate the entire collection at once.

Iterable<int> naturalsTo(int n) sync* {
  int k = 0;
  while (k < n) yield k++;
}

Stream<int> asynchronousNaturalsTo(int n) async* {
  int k = 0;
  while (k < n) yield k++;
}

Iterable<int> naturalsDownFrom(int n) sync* {
  if (n > 0) {
    yield n;
    yield* naturalsDownFrom(n - 1);
  }
}
