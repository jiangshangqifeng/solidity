pragma experimental SMTChecker;
contract C {
	function f() public payable {
		assert ((5 + msg.value + msg.value) - (4 + msg.value) > 0);
	}
}
// ----
// Warning 4984: (87-100): CHC: Overflow (resulting value larger than 2**256 - 1) happens here.
// Warning 4984: (87-112): CHC: Overflow (resulting value larger than 2**256 - 1) happens here.
