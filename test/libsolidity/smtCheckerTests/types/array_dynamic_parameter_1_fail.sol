pragma experimental SMTChecker;

contract C
{
	function f(uint[] memory array, uint x, uint y) public pure {
		array[x] = 200;
		require(x == y);
		assert(array[y] > 300);
	}
}
// ----
// Warning 6328: (148-170): CHC: Assertion violation happens here.\nCounterexample:\n\narray = [15, 15, 15, 15, 15]\nx = 7719\ny = 7719\n\n\nTransaction trace:\nconstructor()\nf([15, 15, 15, 15, 15], 7719, 7719)
