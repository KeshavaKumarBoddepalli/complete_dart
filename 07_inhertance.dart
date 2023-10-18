//* multi level is allowed but multiple is not allowed
void main() {
  One one = One();
  one.printName(); // we can acess functions of two
  Two two = One(); // two have all acess of function of the Two ]
  // (two).funtion1();// gives an error
  (two as One).funtion1(); // now we can acess
  one.printName();

  // Five five = Five(); // abstatc class cant be instanceated .
}

// all car have only four velhiles (one main class (same features))
// car have it unique fucture also(differnt class )
class One extends Two {
  int speed = 20;
  void funtion1() {
    print("This is fuction 1");
  }

  @override
  // overting the parent class in child class
  void printName() {
    super.printName(); // we can run our parent  class also first
    // we can rewrite it also .
    print("Name is keshava in first class ");
  }
}

class Two {
  int length = 30;

  void printName() {
    print("Name is KeshavaKumar");
  }
}
//! implemnts means (we have to redfine(overribe) all the varible , function in implemted class )

class Three implements Two {
  // we have overrbe all the varibles and class
  @override // not compulsory
  int length = 24;
  // @override
  void printName() {
    print("Hello i am implementing the two class ");
  }
}
// we can extend one class implemetnt another class in the same time
// class Four extends Two implements One{

// }

//! abstract class
abstract class Five {
  void function_name(); // only have the fuction name .
}

// abstrct cant create a instacnce
