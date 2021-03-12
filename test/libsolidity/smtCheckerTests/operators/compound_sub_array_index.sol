pragma experimental SMTChecker;

contract C
{
	uint[] array;
	function f(uint x, uint p) public {
		require(x < 100);
		array[p] = 200;
		array[p] -= array[p] - x;
		assert(array[p] >= 0);
		assert(array[p] < 90);
	}
}
// ====
// SMTIgnoreCex: yes
// ----
// Warning 6328: (191-212): CHC: Assertion violation happens here.
// Warning 4661: (191-212): BMC: Assertion violation happens here.
>>>>>>> dev_v0.7.6
