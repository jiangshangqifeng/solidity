pragma experimental SMTChecker;

contract C
{
	struct S { uint[] a; }
	function f(bool b) public pure {
		S memory c;
		c.a[0] = 0;
		if (b)
			c.a[0] = 1;
		else
			c.a[0] = 2;
		assert(c.a[0] > 0);
	}
}
// ----
// Warning 6328: (180-198): CHC: Assertion violation might happen here.
