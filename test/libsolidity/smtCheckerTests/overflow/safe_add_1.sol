pragma experimental SMTChecker;

contract C
{
	function add(uint x, uint y) public pure returns (uint) {
		require(x + y >= x);
		return x + y;
	}
}
// ----
// Warning 4984: (115-120): CHC: Overflow (resulting value larger than 2**256 - 1) happens here.\nCounterexample:\n\nx = 115792089237316195423570985008687907853269984665640564039457584007913129639935\ny = 1\n = 0\n\nTransaction trace:\nconstructor()\nadd(115792089237316195423570985008687907853269984665640564039457584007913129639935, 1)
