pragma experimental SMTChecker;

contract C {
	bytes1 public x;
	bytes3 public y;

	function f() public view {
		bytes1 a = this.x();
		bytes3 b = this.y();
		assert(a == x); // should hold
		assert(a == 'a'); // should fail
		assert(b == y); // should hold
		assert(y == "abc"); // should fail
	}
}
// ----
// Warning 6328: (192-208): CHC: Assertion violation happens here.
// Warning 6328: (260-278): CHC: Assertion violation happens here.
