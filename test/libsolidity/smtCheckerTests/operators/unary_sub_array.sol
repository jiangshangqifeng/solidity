pragma experimental SMTChecker;

contract C
{
	uint[] array;
	function f(uint x) public {
		array[x] = 5;
		uint a = --array[x];
		assert(array[x] == 4);
		assert(a == 4);
		uint b = array[x]--;
		assert(array[x] == 3);
		// Should fail.
		assert(b > 4);
	}
}
// ----
// Warning 6328: (240-253): CHC: Assertion violation might happen here.
// Warning 4661: (240-253): BMC: Assertion violation happens here.
