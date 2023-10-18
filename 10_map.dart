void main() {
  // we can store key value pair
  Map map = {"name": "Keshava", "class": 12};
  // ! we can also genere Map<first,second> ...by default both are dynamic
  print(map);
  // acessing indiviual elements
  print(map["name"]);

  print(map["hello"]?.isEven); // returns null
  // print(map["hellow"]!.isEven); // null check operatior error
  // ? quetion (no error returns null )
  // ! is saying (gives error )

  // ForEach
  map.forEach((key, value) {
    print("$key:$value");
  });
  List<Map<String, int>> list = [
    {"maths": 20, "cs": 40},
    {"maths": 20, "cs": 40},
    {"maths": 20, "cs": 40},
  ];

  list.map((e) {
    // print(e);
    e.forEach((key, value) {
      print("$key :$value");
    });
  }).toList();
}
