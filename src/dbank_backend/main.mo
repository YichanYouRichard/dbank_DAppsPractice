import Debug "mo:base/Debug";

actor DBank {
  var currentValue = 300;
  currentValue := 100;

  let id = 123523789123234;

  Debug.print(debug_show (currentValue));
};
