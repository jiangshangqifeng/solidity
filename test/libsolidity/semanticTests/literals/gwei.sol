contract C {
	uint constant gvon = 1 gvon;

	function f() public view returns(uint) { return gvon; }
}
// ====
// compileViaYul: also
// ----
// f() -> 1000000000

