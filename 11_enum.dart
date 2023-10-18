void main() {
  // enum (imrove the code quality)
  // string we can pass any thimng(check the spelling type also)
  Employe emp = new Employe("keshava", EmployeType.finance); // this use of enum
}

enum EmployeType { swe, finance, marking }
// with enum (in swith (declare all the caseses or default (or else givs the error )))

class Employe {
  final String name;
  final EmployeType job; // we can only selct form above passed list only
  Employe(this.name, this.job);
  // we can some if we want
}

// passing the predefined salary to the emplye in this class
enum EmpTySal {
  sal(23000),
  finance(23442),
  marking(242525);

  final int salary;
  const EmpTySal(this.salary); // must const
}
