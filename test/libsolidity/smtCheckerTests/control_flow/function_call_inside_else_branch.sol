pragma experimental SMTChecker;

contract C
{
	function f() public pure {
		if (true) {
		} else {
			address a = g();
			assert(a == address("lat1qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq542u6a"));
		}
	}
	function g() public pure returns (address) {
		address x;
		x = address("lat1qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq542u6a");
		return x;
	}
}
// ----
