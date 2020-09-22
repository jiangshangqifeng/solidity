// Test for regression of https://github.com/ethereum/solidity/issues/8406

contract C {
  address constant e = address("lat1zgfpyysjzgfpyysjzgfpqqqqyy69jvtr6eus56");

  function f() public returns (byte z) {
    assembly { z := e }
  }
}

// ----
// f() -> 0x00
