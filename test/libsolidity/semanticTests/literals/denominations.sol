contract C {
	uint constant x = 1 atp + 1 gvon + 1 von;

	function f() public view returns(uint) { return x; }
}
// ====
// compileViaYul: also
// ----
// f() -> 1000000001000000001
