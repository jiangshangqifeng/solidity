pragma experimental SMTChecker;

contract C
{
	function f() public pure {
		if (true) {
			address a = g();
			assert(a == address("lat1qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq542u6a"));
		}
		if (true) {
			address a = g();
			assert(a == address("lat1qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq542u6a"));
		}

	}
	function g() public pure returns (address) {
		address a;
		a = address("lat1qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq542u6a");
		return a;
	}
}
// ----
