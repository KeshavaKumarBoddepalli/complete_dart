// class are blue print of the objects .
void main() {
  // access the function in the class
  FirstClass().printName();
  // ?class functin can return to the final own also .

  // create one instance of the class
  FirstClass firstclass = FirstClass();
  // ignore: unused_local_variable
  final firstclass2 =
      FirstClass; // ?even it was final we can redefine the varibles
  // FirstClass firstclass2 = FirstClass;// this gives an error (remove final above line to remove)
  firstclass.secondFunction();
  print(firstclass.shape);
  firstclass.shape = "Rectangle";
  print(firstclass.shape);

  // constuctor
  final secondclass = SecondClass("Circle", 50);
  print(secondclass.shape);

  print(secondclass.height);
  // setting setter to the second class( allows to modify )
  secondclass.setHeight = 15;
  print(secondclass.height);

  print(SecondClass.vvalue); // constucot is called .
}

class FirstClass {
  String shape = "Circle";
  // varible, function
  void printName() {
    print("First class printname function ");
  }

  void secondFunction() {
    print("THis is the second function of first class name");
  }
}

class SecondClass {
  String shape;
  int size;
  SecondClass(this.shape, this.size) {
    // write the functin
    // call the functins
  }
  // like this also we can define the constuctor.
  // SecondClass({required this.shape, required this.size});

  // !Private varibles , getters , setters , static varibles and static function
  //ignore:unused_field
  int _height = 12; // !by adding under score at first--> private varible
  // it can read and write
  // if we want to set it only read --> geter
  //! getter (read only varible)
  int get height => _height;

  //! setter ( allow to modify outside the class)
  // if allow to modify only
  set setHeight(int h) {
    _height = h;
  }

  //! static varible or functions
  // constuctor is not called
  // if want to call the varible or fun but not want to create a instance of the class (static func or var)
  static int vvalue = 12;
  // for the function also same .
}
