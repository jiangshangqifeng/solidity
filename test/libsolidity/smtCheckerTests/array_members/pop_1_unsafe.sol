pragma experimental SMTChecker;

contract C {
	uint[] a;
	function f() public {
		a.pop();
	}
}
// ----
// Warning 1147: (82-89): Empty array "pop" might happen here.
