pragma experimental SMTChecker;

contract C  {
	function f(int x, int y) public pure returns (int) {
		return x / y;
	}
}
// ----
// Warning 3046: (110-115): Division by zero happens here
// Warning 2661: (110-115): Overflow (resulting value larger than 0x80 * 2**248 - 1) happens here
