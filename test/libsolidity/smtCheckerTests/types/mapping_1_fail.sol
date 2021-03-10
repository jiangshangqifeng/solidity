pragma experimental SMTChecker;

contract C
{
	mapping (uint => uint) map;
	function f(uint x) public {
		map[2] = x;
		map[2] = 3;
		assert(x != map[2]);
	}
}
// ----
// Warning 6328: (134-153): CHC: Assertion violation might happen here.
// Warning 4661: (134-153): BMC: Assertion violation happens here.
