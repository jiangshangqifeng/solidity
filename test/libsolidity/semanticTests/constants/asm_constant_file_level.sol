contract C {
address constant e = 'lat1zgfpyysjzgfpyysjzgfpqqqqyy69jvtr6eus56';
  function f() pure public returns (address z) {
    assembly { z := e }
  }
}
// ====
// compileViaYul: also
// ----
// f() -> 0x1212121212121212121212121000002134593163
