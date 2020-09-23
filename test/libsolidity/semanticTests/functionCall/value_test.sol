contract C {
	function f() public payable returns (uint) {
		return msg.value;
	}
}
// ====
// compileViaYul: also
// ----
// f(), 1 lat -> 1000000000000000000
// f(), 1 von -> 1
