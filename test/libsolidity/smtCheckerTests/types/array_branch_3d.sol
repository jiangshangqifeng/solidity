pragma experimental SMTChecker;

contract C
{
	uint[][][] c;
	function f(bool b) public {
		c[0][0][0] = 0;
		if (b)
			c[0][0][0] = 1;
		assert(c[0][0][0] > 0);
	}
}
// ----
// Warning 6328: (138-160): CHC: Assertion violation might happen here.
// Warning 4661: (138-160): BMC: Assertion violation happens here.
