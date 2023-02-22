import Debug "mo:base/Debug";
import Time "mo:base/Time"

actor DBank {
  stable var currentValue : Nat = 300;
  currentValue := 100;

  let startTime = Time.now();
  Debug.print(debug_show (startTime));

  let id = 123523789123234;

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

  public func compound() {
    let currentTime = Time.now();
  };

};
