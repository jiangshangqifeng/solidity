pragma experimental SMTChecker;

contract C {
	bytes b;
	function f() public {
		b.push() = b.push();
		uint length = b.length;
		assert(length >= 2);
		assert(b[length - 1] == 0);
		assert(b[length - 1] == b[length - 2]);
		// Fails
		assert(b[length - 1] == bytes1(uint8(1)));
	}
}
// ----
// Warning 6328: (236-277): CHC: Assertion violation might happen here.
// Warning 4661: (236-277): BMC: Assertion violation happens here.
