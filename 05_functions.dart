void main() {
  greet();
  String str = hellowretrn(); // *we cant assigne the return varibel to const .
  print(str);

  var values = functionreturnmulti();
  // var va1, val2, val3, val4 = functionreturnmulti();  //--> we can use this own also (we can acess indvidually)
  print(values.$1); // gives the first own

  // calling the named arguments
  printName(name: "Keshava", val: 20);
}

//! defining the function
// return type function_name(arguments){
// code to excute.
// }
void greet() {
  print("Hellow welcome");
}

String hellowretrn() {
  // *we can return dynamic or nothing
  return "Hellow is returnded";
}

// *if we want to pass more than one return type
// (return type order should be same )
(int, String, int) functionreturnmulti() {
  return (12, "keshava", 234);
}

//! postional + named
void printAge(int age, {required int finalval}) {
  // (postionla is alwayes prior to the named )
  print(age);
}

//! named argumetns
void printName({required String name, required int val, int? valu}) {
  // if it is not required define it as nullable varible.
  print(name);
}

//! named return type
({String name, int age}) printStuff() {
  return (name: "hello", age: 12);
}

// one of defineing a function
void printStufff() => print("Keshava");
