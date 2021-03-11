// Test for regression of https://github.com/ethereum/solidity/issues/8406

contract C {
  address constant e = 'lat1zgfpyysjzgfpyysjzgfpqqqqyy69jvtr6eus56';

  function f() public returns (byte z) {
    assembly { z := e }
  }
}

// ====
// compileViaYul: also
// compileToEwasm: also
// ----
// f() -> 0x00
