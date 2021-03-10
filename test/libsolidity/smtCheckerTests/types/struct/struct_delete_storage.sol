pragma experimental SMTChecker;
pragma abicoder               v2;

contract C {
	struct S {
		uint x;
		uint[] a;
	}
	S s1;
	function g(S memory s2) public {
		s1.x = s2.x;
		s1.a = s2.a;
	}
	function f(S memory s2) public {
		delete s1;
		assert(s1.x == s2.x);
		assert(s1.a.length == s2.a.length);
		assert(s1.a.length == 0);
	}
}
// ====
// SMTIgnoreCex: yes
// ----
// Warning 6328: (240-260): CHC: Assertion violation might happen here.
// Warning 6328: (264-298): CHC: Assertion violation might happen here.
// Warning 4661: (240-260): BMC: Assertion violation happens here.
// Warning 4661: (264-298): BMC: Assertion violation happens here.
