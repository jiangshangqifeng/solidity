address constant e = address('lat1zgfpyysjzgfpyysjzgfpqqqqyy69jvtr6eus56');

contract C {
  function f() public returns (address z) {
    assembly { z := e }
  }
}
// ====
// compileViaYul: also
// ----
// f() -> 0x1212121212121212121212121000002134593163
