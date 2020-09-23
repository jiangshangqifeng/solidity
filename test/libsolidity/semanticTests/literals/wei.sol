contract C {
	uint constant x = 1 von;

	function f() public view returns(uint) { return x; }
}
// ====
// compileViaYul: also
// ----
// f() -> 1
