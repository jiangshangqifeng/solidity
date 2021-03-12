pragma experimental SMTChecker;

abstract contract D
{
	function g(uint x) public virtual;
}

contract C
{
	mapping (uint => uint) map;
	function f(uint y, D d) public {
		require(map[0] == map[1]);
		assert(map[0] == map[1]);
		d.g(y);
		assert(map[0] == map[1]);
		assert(map[0] == 0); // should fail
	}

	function set(uint x) public {
		map[0] = x;
		map[1] = x;
	}
}
// ====
// SMTIgnoreCex: yes
// ----
// Warning 6328: (201-225): CHC: Assertion violation might happen here.
// Warning 6328: (239-263): CHC: Assertion violation might happen here.
// Warning 6328: (267-286): CHC: Assertion violation might happen here.
// Warning 4661: (239-263): BMC: Assertion violation happens here.
// Warning 4661: (267-286): BMC: Assertion violation happens here.
