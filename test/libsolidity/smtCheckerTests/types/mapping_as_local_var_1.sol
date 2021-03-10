pragma experimental SMTChecker;

contract c {
	mapping(uint => uint) x;
	mapping(uint => uint) y;
	function f(bool cond) public {
		mapping(uint => uint) storage a = cond ? x : y;
		x[2] = 1;
		y[2] = 2;
		a[2] = 3;
		// False positive since aliasing is not yet supported.
		if (cond)
			assert(a[2] == x[2] && a[2] != y[2]);
		else
			assert(a[2] == y[2] && a[2] != x[2]);
	}
}
// ----
// Warning 6328: (288-324): CHC: Assertion violation might happen here.
// Warning 6328: (336-372): CHC: Assertion violation might happen here.
// Warning 4661: (288-324): BMC: Assertion violation happens here.
// Warning 4661: (336-372): BMC: Assertion violation happens here.
