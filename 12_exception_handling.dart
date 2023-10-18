void main() {
  // trunkation diviison(getting flor value after divion )
  int val = 10 ~/ 3;
  print(val);
  double val2 = 10 / 0;
  print(val2); // no problem gives infinity
  //print(10 ~/ 0); // gives error

  // cathcing the error using try-catch
  try {
    print(10 ~/ 0);
  }
  //! used for particular type of exceptions (handle it differently )
  on Exception catch (e) {
    print(e);
  } catch (e) {
    print(e);
  } finally {
    print("I am fiall (i will excuted regardless of exception )");
  }
}
