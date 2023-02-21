import Debug "mo:base/Debug";

actor DBank {
  var currentValue : Nat = 300;
  currentValue := 100;

  let id = 123523789123234;
  // Debug.print(debug_show (id));

  public func topUp(amount : Nat) {
    currentValue += amount;
    Debug.print(debug_show (currentValue));
  };

  public func withdrawl(amount : Nat) {
    let tempValue : Int = currentValue - amount;
    if (tempValue >= 0) {
      currentValue -= amount;
      Debug.print(debug_show (currentValue));
    } else {
      Debug.print("the withdrawl amount exceeds the current value.");
    };
  };

  public query func checkBalance() : async Nat {
    return currentValue;
  };

  // topUp();
};
