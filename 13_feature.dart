// Features are main used for asyncronus programming

void main() async {
  stay();
  print("delaying ");
  stayy(); // will not print any statemet

// await is used with async only
  String value = await stayy(); // wait untill the value will return
  print(value);

  stayy().then((val) {
    print(val);
  });
  print("hello last");
  print("hellow last 2");
}

Future<String> stay() async {
  return "hiii";
}

// witoput async with cannot use the Future
//but

Future<String> stayy() {
  // like this we can define withour async
  // return Future(() async { // here async is choice
  //   return "hello";
  // });
  // to slow down the excution time we can delay
  return Future.delayed(Duration(seconds: 2), () {
    return "hellow";
  });
}
