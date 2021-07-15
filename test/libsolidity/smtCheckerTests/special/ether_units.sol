pragma experimental SMTChecker;
contract D {
	function f() public pure {
		assert(1000000000000000000 von == 1 atp);
		assert(100000000000000000 von == 1 atp);
		assert(1000000000 von == 1 gvon);
		assert(100000000 von == 1 gvon);
		assert(1000000000 gvon == 1 atp);
		assert(100000000 gvon == 1 atp);
	}
}
// ----
// Warning 6328: (119-158): CHC: Assertion violation happens here.\nCounterexample:\n\n\n\n\nTransaction trace:\nconstructor()\nf()
// Warning 6328: (198-229): CHC: Assertion violation happens here.\nCounterexample:\n\n\n\n\nTransaction trace:\nconstructor()\nf()
// Warning 6328: (269-300): CHC: Assertion violation happens here.\nCounterexample:\n\n\n\n\nTransaction trace:\nconstructor()\nf()
