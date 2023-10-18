// the set in pyhons

void main() {
  final record = (4.655, 550);
  // List list = [];
  Record record2 = (23, 55);
  print(record2.runtimeType);
// record are immutable (can be changed )
  // print(record.$1);
  var first = record.$1; // we use the getters (cant use the setters )
  print(record);
  print(first);
  print(record.runtimeType);
  // we can pass named argumetns
  final name = (names: "keshava", 2, 34);
  // we can pass the named argumetns

  // if in case of list
  final list = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  final [a, s, d, f, ...g] = list;
  print(a);
  print(g);
  final json = {"mark1": 20, "mark2": 30, "mark3": 40};
  final {"mark1": mark1} = json;
  print(mark1);

  if (json case {"mark1": int mark1}) {
    // if the mapping is correct then if is exucuted
    print(mark1);
  }
  int index = 1;
  switch (list) {
    case [1, 2, 3, 4, 5, 6, 7, 8, 9]
        when index == 2: // we can put or || or also
      print("ok");
  }

  int pageno = 1;
  // comkpulsury add the default to the switch
  final text = switch (pageno) { 0 => 20, 1 => 20, _ => 30 };
}
