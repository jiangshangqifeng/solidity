pragma experimental SMTChecker;

contract C {
	uint[] a;
	function f(uint l) public {
		for (uint i = 0; i < l; ++i) {
			a.push();
			a.pop();
		}
		a.pop();
	}
}
// ----
// Warning 2529: (135-142): Empty array "pop" might happen here.
// Warning 2529: (150-157): Empty array "pop" might happen here.
