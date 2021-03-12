pragma experimental SMTChecker;
contract A {
	int x = 0;

	function f() virtual internal {
		x = 2;
	}

	function proxy() public {
		f();
	}
}

contract C is A {
	function f() internal virtual override {
		super.f();
		assert(x == 2);
		assert(x == 3); // should fail
	}
}

contract D is C {

	function f() internal override {
		super.f();
		assert(x == 2);
		assert(x == 3); // should fail
	}
}
// ----
// Warning 6328: (237-251): CHC: Assertion violation happens here.
// Warning 6328: (360-374): CHC: Assertion violation happens here.
