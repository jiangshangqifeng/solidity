pragma experimental SMTChecker;
pragma abicoder               v2;

contract C {
	struct T {
		uint y;
		uint[] a;
	}
	struct S {
		uint x;
		T t;
		uint[] a;
		T[] ts;
	}
	function f() public pure {
		S memory s1;
		s1.x = 2;
		assert(s1.x != 2);
		s1.t.y = 3;
		assert(s1.t.y != 3);
		s1.a[2] = 4;
		assert(s1.a[2] != 4);
		s1.ts[3].y = 5;
		assert(s1.ts[3].y != 5);
		s1.ts[4].a[5] = 6;
		assert(s1.ts[4].a[5] != 6);
	}
}
// ----
// Warning 6328: (228-245): CHC: Assertion violation might happen here.
// Warning 6328: (263-282): CHC: Assertion violation might happen here.
// Warning 6328: (301-321): CHC: Assertion violation might happen here.
// Warning 6328: (343-366): CHC: Assertion violation might happen here.
// Warning 6328: (391-417): CHC: Assertion violation might happen here.
// Warning 4661: (228-245): BMC: Assertion violation happens here.
// Warning 4661: (263-282): BMC: Assertion violation happens here.
// Warning 4661: (301-321): BMC: Assertion violation happens here.
// Warning 4661: (343-366): BMC: Assertion violation happens here.
// Warning 4661: (391-417): BMC: Assertion violation happens here.
