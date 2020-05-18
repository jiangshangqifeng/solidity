pragma experimental SMTChecker;

contract C
{
	modifier m {
		if (true)
			_;
	}

	function f(address a) m public pure {
		if (true) {
			a = g();
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
