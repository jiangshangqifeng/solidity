pragma experimental SMTChecker;

contract C {
	bytes b;

	function f() public {
		require(b.length == 0);
		b.push() = bytes1(uint8(1));
		assert(b[0] == bytes1(uint8(1)));
	}

	function g() public {
		bytes1 one = bytes1(uint8(1));
		b.push() = one;
		assert(b[b.length - 1] == one);
		// Fails
		assert(b[b.length - 1] == bytes1(uint8(100)));
	}

}
// ----
// Warning 6328: (290-333): CHC: Assertion violation happens here.
// Warning 4661: (290-333): BMC: Assertion violation happens here.
