import '08_oops.dart';

void main() {
  List list = [10, 23, 30]; // dynamic list
  print(list);
  // acess the list
  list[0]; // fisrst element
  List<int> list2 = [10, 20, 30]; // only intergers are allowed .
  // angular brackets are called geners

  Name name = Name(20); // one way
  final Name name2 = Name<int>(20); // second way
  List<Object> list3 =
      []; // we can pass any (base class of all objects ), not allowed for null
  List<dynamic> list4 = []; // we allowed to pass the null also

  final keshava = Student("keshava4", 50);
  List<Student> liststudent = [
    Student("Keshava1", 10),
    Student("Keshava2", 20),
    Student("Keshava3", 30),
    keshava
  ];

  print(liststudent.toString());
  print(liststudent);
  // problem we are creating new instance every time
  liststudent.remove(Student("Keshava3", 40)); // this will not work
  print(liststudent);

  liststudent.remove(keshava); // by making final (stricteg the instance)
  print(liststudent); // this will works
  // for in loop

  // using for in the list
  for (Student student in liststudent) {
    if (student.mark >= 20) {
      print("Student are $student.name");
    }
  }

  Iterable<String> str =
      []; //same as the iterable but all functiuon are avalbile
  final listiterable = liststudent
      .where((element) => element.mark >= 20); // this will return iterable list
  print(listiterable);
  print(listiterable.toList()); // this convertes into list

  //! where is used for filtering

  //! Set
  // no duplicate elementes allowed
  Set set = {}; // define a set
  // we can give the simal type while defing but while using(print) // multiple will not repeated
}

// typo is restticted here
class Name<T> {
  final T name;
  Name(this.name);
}

class Student {
  final String name;
  final int mark;
  Student(this.name, this.mark);
  // with this method we can see the strudent name
  // withour this we cant see the names (only studebt innstance ...only)
  @override
  String toString() => "Student $name";
}
