pragma experimental SMTChecker;

contract C
{
	modifier m(address a) {
		if (true) {
			a = g();
			_;
			assert(a == address("lat1qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq542u6a"));
		}
	}

	function f(address a) m(a) public pure {
	}
	function g() public pure returns (address) {
		address a;
		a = address("lat1qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq542u6a");
		return a;
	}
}
// ----
