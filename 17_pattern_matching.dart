void main() {
  Student student = Student("KeshavaKumar");

  print(student.name);
  final Student(:name) = student;
  print(name);
}

class Student {
  final name;
  Student(this.name);
}
