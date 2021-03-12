contract C {
	uint constant x = 1 lat;

	function f() public view returns(uint) { return x; }
}
// ====
// compileViaYul: also
// compileToEwasm: also
// ----
// f() -> 1000000000000000000
