class Candidate {
  String name;
  int yearsExperience;

  Candidate(this.name, this.yearsExperience);
}

void main(List<String> args) {
  var callbacks = [];
  for (var i = 0; i < 2; i++) {
    callbacks.add(() => print(i));
  }

  for (final c in callbacks) {
    c();
  }

  List<Candidate> candidates = [
    Candidate('John', 1),
    Candidate('Jane', 3),
    Candidate('Joe', 5),
  ];

  for (final Candidate(:name, :yearsExperience) in candidates) {
    print('$name has $yearsExperience of experience.');
  }

  // while & do-whiles
  while (true) {
    // ...
    break;
  }

  do {
    // ...
    break;
  } while (true);

  // continue;
  // break;
}
