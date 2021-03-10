address constant e = 'lat1zgfpyysjzgfpyysjzgfpqqqqyy69jvtr6eus56';

contract C {
  function f() public returns (address z) {
    assembly { z := e }
  }
}
// ----
// f() -> lat1zgfpyysjzgfpyysjzgfpqqqqyy69jvtr6eus56
