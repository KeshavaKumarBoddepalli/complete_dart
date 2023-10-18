// stream constroller
import 'dart:async';

// Stream
// Future --> one request and one responece
// Stream --> request and responce every time the it changes
void main() async {
  print(myfun()); // return stream instance
  // Stream val = await myfun();
  // print(val);
  print(await myfun()); // will not works with stream
  print(await myfun().first); // gives the first own  only
  // for acessing all
  myfun().listen((event) {
    print(event);
  }, onDone: () {
    print("I am done ");
  });

  print("Hello world ");
  //! hello world will print first because this is asynchronice programming

  coundown();
}

Stream<int> myfun() async* {
  // we must use async* for the using Stream
  for (int i = 5; i > 0; i--) {
    yield i;
    await Future.delayed(Duration(seconds: 1));
  }
  // keeps on running the
  // return Stream.periodic(Duration(seconds: 2),(val){
  //   print(val);
  // });
}

// stream constroller

// ! controller allowes us to add the error and closs the exucion and so many other prpertyes
void coundown() {
  final controller = StreamController<int>();
  controller.sink.add(1);
  controller.sink.add(1);
  controller.sink.add(1);
  controller.sink.add(1);
  controller.sink.add(1);
  controller.sink.add(1);
  controller.sink.close();
  // closer the controller sink after manupulation are done

  // we can close the stream
  // we can add error to the controller

  controller.stream.listen((event) {
    print(event);
  }, onError: (err) {
    print(err);
  });
  controller.close();
  // close the controller after done
}
