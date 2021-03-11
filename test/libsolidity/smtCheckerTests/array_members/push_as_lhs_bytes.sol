pragma experimental SMTChecker;

contract C {
	bytes b;

	function f() public {
		require(b.length == 0);
		b.push() = byte(uint8(1));
		assert(b[0] == byte(uint8(1)));
	}

	function g() public {
		byte one = byte(uint8(1));
		b.push() = one;
		assert(b[b.length - 1] == one);
		// Fails
		assert(b[b.length - 1] == byte(uint8(100)));
	}

}
// ----
// Warning 6328: (290-333): CHC: Assertion violation might happen here.
// Warning 4661: (290-333): BMC: Assertion violation happens here.
