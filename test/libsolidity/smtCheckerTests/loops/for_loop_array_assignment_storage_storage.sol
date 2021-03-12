pragma experimental SMTChecker;

contract LoopFor2 {
	uint[] b;
	uint[] c;

	// Disabled because of Spancer nondeterminism in the overflow queries
	// which can't be disabled separately.
	/*
	function testUnboundedForLoop(uint n) public {
		b[0] = 900;
		uint[] storage a = b;
		require(n > 0 && n < 100);
		for (uint i = 0; i < n; i += 1) {
			b[i] = i + 1;
			c[i] = b[i];
		}
		// This is safe but too hard to prove currently.
		assert(b[0] == c[0]);
		assert(a[0] == 900);
		assert(b[0] == 900);
	}
	*/
}
// ====
// SMTIgnoreCex: yes
// ----
// Warning 4984: (237-242): CHC: Overflow (resulting value larger than 2**256 - 1) might happen here.
// Warning 4984: (217-223): CHC: Overflow (resulting value larger than 2**256 - 1) might happen here.
// Warning 6328: (317-337): CHC: Assertion violation might happen here.
// Warning 6328: (341-360): CHC: Assertion violation might happen here.
// Warning 6328: (364-383): CHC: Assertion violation might happen here.
// Warning 4661: (317-337): BMC: Assertion violation happens here.
// Warning 4661: (341-360): BMC: Assertion violation happens here.
// Warning 4661: (364-383): BMC: Assertion violation happens here.
