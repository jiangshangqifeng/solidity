pragma experimental SMTChecker;

contract C
{
	mapping (uint => uint) map;
	function f(uint x) public {
		map[x] = 5;
		uint a = --map[x];
		assert(map[x] == 4);
		assert(a == 4);
		uint b = map[x]--;
		assert(map[x] == 3);
		// Should fail.
		assert(b > 4);
	}
}
// ----
// Warning 6328: (244-257): CHC: Assertion violation might happen here.
// Warning 4661: (244-257): BMC: Assertion violation happens here.
