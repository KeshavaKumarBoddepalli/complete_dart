void main() {
  final date = DateTime.now();
  print(date);
  // Object oriendted programing langauge

  //!1. Polymorphism (over-riting )(ability of object to take many forms )(many forms)
  Animal cat = Cat();
  cat.sound(); // have property of the cat
  // cat = Animal();
  (cat).sound(); // have the property of the animals
  //!2. Abstraction
  // restrection(hiding the internal detail and computational implentation)

  Animal cat2 = Cat();
  cat2.sound();
  //!3. Inhertiance
  //!4 . Encapusulation (private class ,varibles ,function)
  // hiding the data (data protection )

  // Object hhh = Keshava();// mxin cant to instanceted
  // Object hh = Hellow();(object super type for all return type other than null )
  // hh.fun();

  //! sealed
  Parent child = Child1();
  //* we have implents all classes for no error which using Parent class
  switch (child) {
    case Child1():
      print("child1");
    case Child2():
      print("child2");
  }
}

abstract class Animal {
  void sound() {
    print("Animal making sound");
  }
}

class Cat extends Animal {
  void sound() {
    print("Cat do sound");
  }
}

//! mixin (no class hiarcrcy)

mixin Keshava {
  int height = 6;
}
mixin Keshava2 {}

//* how mixin differnet from the extends (it will not create the parent child relation ship)
//* so we can implemnts no.of mixin classes
class Hellow with Keshava, Keshava2 {
  void fun() {
    print(height);
  }
}

//! sealed (all the classes shoud used or defined which impletnt sealed class )
sealed class Parent {}

class Child1 implements Parent {}

class Child2 implements Parent {}

// ! final
final class ClassFinal {} // same as the sealed class but dont have the all futures of the seald .

//! base (can not be implemented but extended )

//! mixin +class
// we can use the cominations of the abstraction 