pragma experimental SMTChecker;

contract C
{
	mapping (uint => mapping (uint => uint)) map;
	function f(uint x) public {
		x = 41;
		map[13][14] = 42;
		assert(x == map[13][14]);
	}
}
// ----
// Warning 6328: (154-178): CHC: Assertion violation might happen here.
// Warning 4661: (154-178): BMC: Assertion violation happens here.
