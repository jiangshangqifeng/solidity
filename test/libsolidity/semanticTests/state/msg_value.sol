contract C {
    function f() public payable returns (uint) {
        return msg.value;
    }
}
// ====
// compileViaYul: also
// ----
// f() -> 0
// f(), 12 lat -> 12000000000000000000
