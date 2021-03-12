contract Test {
    function test() public returns (uint ret) { return uint(address(Test(address('lat1xdz92enh3zvsqyfzxdz92enh3zvsqyfzcdm8df')))); }
}
// ====
// compileViaYul: also
// compileToEwasm: also
// ----
// test() -> 0xffffffffffffffffffffffffffffffff
