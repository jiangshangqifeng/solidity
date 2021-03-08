contract Test {
    function test() public returns (uint ret) { return uint(address(Test(address('lax1xdz92enh3zvsqyfzxdz92enh3zvsqyfzhgfgrx')))); }
}
// ====
// compileViaYul: also
// compileToEwasm: also
// ----
// test() -> 0x0000000000000000000000003344556677889900112233445566778899001122
