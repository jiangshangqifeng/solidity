pragma experimental SMTChecker;

contract A {
	uint x;
	function f() internal virtual {
		v();
		assert(x == 0); // should fail
		assert(x == 2); // should hold
	}
	function v() internal virtual {
		x = 0;
	}
}
contract A1 is A {
	function f() internal virtual override {
		super.f();
	}
}
contract B is A {
	function f() internal virtual override {
		super.f();
	}
}

contract C is B, A1 {
	function g() public {
		x = 1;
		f();
	}
	function f() internal override(B, A1) {
		super.f();
	}
	function v() internal override {
		x = 2;
	}
}
// ----
// Warning 6328: (97-111): CHC: Assertion violation happens here.
