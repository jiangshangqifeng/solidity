pragma experimental SMTChecker;

contract C {
	uint[] b;
	function f() public {
		b.push() = b.push();
		uint length = b.length;
		assert(length >= 2);
		assert(b[length - 1] == 0);
		assert(b[length - 1] == b[length - 2]);
		// Fails
		assert(b[length - 1] == 1);
	}
}
// ----
// Warning 6328: (237-263): CHC: Assertion violation might happen here.
// Warning 4661: (237-263): BMC: Assertion violation happens here.
