pragma experimental SMTChecker;

contract C
{
	uint[10] array;
	function f(uint x, uint y) public {
		array[x] = 200;
		require(x == y);
		assert(array[y] > 300);
	}
}
// ----
// Warning 6328: (139-161): CHC: Assertion violation might happen here.
// Warning 4661: (139-161): BMC: Assertion violation happens here.
