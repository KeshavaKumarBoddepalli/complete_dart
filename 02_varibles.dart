String? hellow;
void main() {
  // declare a varible
  int a = 3; // varible is unique identifer

  print(a);
  print(a.isEven); // gives boolean
  String str = "this is the string";
  print(str);
  // int,String ,double,bool(true or false),dynamic(assigned in the run time)
  dynamic somevalue = 10.33; // assign at the run time
  print(somevalue.runtimeType);
  // differnet types of the varibles have the different functions (built in)

// string interpolation
  String greet = "THis is KeshavaKumar";
  greet = "$greet good morining "; // $varible_name
  // whenwe use the varible function use the curly brases .
  greet = "${greet.length} this is lenght";

  // mylti line string \
  String mulineString = ''' this
  is multi line ''';
  print(mulineString);
  // for new line /n ;
  print(greet);

  // var/final/constant

  var he = "hello type "; // automatic takes first assigned varible type
  print(he.runtimeType);
  // he = 10;// when the we use the dynamic (no error is thrown )
  print(he);

  // main differnet of final and const
  final dat = DateTime.now(); // can be changed but once(allow run time change )
  const datee =
      10; // cant be changed any more.(no allow the run time change is also)

  print(dat);
  print(datee);

  // nullable varible
  // int value = null; gives an error ( we can assgin the null)
  String? value = null; // now we can assign the error
  // for finall we dont have
  // print(value.isEven); // throws eror(run time error )
  print(value
      ?.length); // if the value is null-> gives the null ; no null --> length of the string
  print(value);
  value = "12"; // we can pass the value in the future (**  null sound safty )
  // print(value?.length);
  print(hellow?.length); // returns nll
  // if dont want to return the null

  print(hellow?.length ?? 0); // *0 will be returned if legth is null
  hellow = "hi";
  // print(hellow.length); // gives the error
  print(hellow?.length); // compulsory to use the null operator
}
