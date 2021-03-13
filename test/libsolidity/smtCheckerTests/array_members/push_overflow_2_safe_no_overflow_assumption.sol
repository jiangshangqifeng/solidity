pragma experimental SMTChecker;

contract C {
	uint256[] x;
	function f(uint256 l) public {
		require(x.length == 0);
		x.push(42);
		x.push(84);
		for(uint256 i = 0; i < l; ++i)
			x.push(23);
		assert(x[0] == 42);
	}
}
// ----
// Warning 6328: (196-214): CHC: Assertion violation might happen here.
// Warning 4661: (196-214): BMC: Assertion violation happens here.
