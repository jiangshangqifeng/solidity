pragma experimental SMTChecker;
contract C {
	int[][] array2d;
	function l() public {
		array2d.push().push();
		assert(array2d.length > 2);
		assert(array2d[array2d.length - 1].length > 3);
	}
}
// ----
// Warning 6328: (113-139): CHC: Assertion violation might happen here.
// Warning 6328: (143-189): CHC: Assertion violation might happen here.
// Warning 4661: (113-139): BMC: Assertion violation happens here.
// Warning 4661: (143-189): BMC: Assertion violation happens here.
