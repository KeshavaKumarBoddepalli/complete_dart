void main() {
  int age = 20;
  // !if-else conditonal statement
  if (age < 18) {
    print("Kid");
  } else {
    print("Young ");
  }
  // !ternary operator

  String str = age < 18 ? "Kid" : "Young"; // condition ? if ture : if false ;
  print(str);
  int finalage = 33;
  // !switch statement
  switch (age) {
    case < 18
        when finalage <
            99: // if both the statemetns are true then only the case is exicuted .
      print("Kid");
    // break; is need
    // *if the case is empty and dont want to continue (break is compulsory)
    case > 18:
      print("Young");

// if now condtion is match (falls under the default case)
    default:
      print("This is the defalut case ");
  }
}
