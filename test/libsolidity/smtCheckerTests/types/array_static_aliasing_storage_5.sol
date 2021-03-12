pragma experimental SMTChecker;

contract C
{
	uint[2] b1;
	uint[2] b2;
	function f(uint[2] storage a, uint[2] memory c) internal {
		c[0] = 42;
		a[0] = 2;
		b1[0] = 1;
		// Erasing knowledge about storage variables should not
		// erase knowledge about memory references.
		assert(c[0] == 42);
		// Fails because b1 == a is possible.
		// Disabled because Spacer seg faults.
		//assert(a[0] == 2);
		assert(b1[0] == 1);
	}
	function g(bool x, uint[2] memory c) public {
		if (x) f(b1, c);
		else f(b2, c);
	}
}
// ====
// SMTIgnoreCex: yes
// ----
// Warning 6328: (276-294): CHC: Assertion violation might happen here.
// Warning 6328: (338-355): CHC: Assertion violation might happen here.
// Warning 6328: (359-377): CHC: Assertion violation might happen here.
// Warning 4661: (338-355): BMC: Assertion violation happens here.
// Warning 4661: (338-355): BMC: Assertion violation happens here.
// Warning 4661: (338-355): BMC: Assertion violation happens here.
