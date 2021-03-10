pragma experimental SMTChecker;

contract C
{
	uint[] a;
	function g(uint x, uint y) public {
		require(x != y);
		(, a[y]) = (2, 4);
		assert(a[x] == 2);
		assert(a[y] == 4);
	}
}
// ----
// Warning 6328: (136-153): CHC: Assertion violation might happen here.
// Warning 4661: (136-153): BMC: Assertion violation happens here.
