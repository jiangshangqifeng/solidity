pragma experimental SMTChecker;

contract C {
	struct S {
		uint x;
		uint[] a;
	}
	function s() internal pure returns (S memory s1) {
		s1.x = 42;
		s1.a[2] = 43;
	}
	function f() public pure {
		S memory s2 = s();
		assert(s2.x == 42);
		assert(s2.a[2] == 43);
		assert(s2.a[3] == 43);
	}
}
// ----
// Warning 6328: (265-286): CHC: Assertion violation might happen here.
// Warning 4661: (265-286): BMC: Assertion violation happens here.
