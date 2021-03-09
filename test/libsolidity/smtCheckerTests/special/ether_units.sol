pragma experimental SMTChecker;
contract D {
	function f() public pure {
		assert(1000000000000000000 von == 1 lat);
		assert(100000000000000000 von == 1 lat);
		assert(1000000000 von == 1 gvon);
		assert(100000000 von == 1 gvon);
		assert(1000000000 gvon == 1 lat);
		assert(100000000 gvon == 1 lat);
	}
}
// ----
// Warning 6328: (121-162): CHC: Assertion violation happens here.\nCounterexample:\n\n\n\n\nTransaction trace:\nconstructor()\nf()
// Warning 6328: (202-233): CHC: Assertion violation happens here.\nCounterexample:\n\n\n\n\nTransaction trace:\nconstructor()\nf()
// Warning 6328: (275-308): CHC: Assertion violation happens here.\nCounterexample:\n\n\n\n\nTransaction trace:\nconstructor()\nf()
