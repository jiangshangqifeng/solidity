pragma experimental SMTChecker;

contract C {
	uint[] a;
	function f() public {
		a.pop();
		a.length;
	}
}
// ----
// Warning 2529: (82-89): Empty array "pop" might happen here.
