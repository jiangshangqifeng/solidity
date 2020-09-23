pragma experimental SMTChecker;
contract C {
	uint[] array;
	function f(uint x, uint p) public {
		require(x == 2);
		array[p] = 10;
		array[p] /= array[p] / x;
		assert(array[p] == x);
		assert(array[p] == 0);
	}
}
// ----
// Warning 7812: (188-209): Assertion violation might happen here.
