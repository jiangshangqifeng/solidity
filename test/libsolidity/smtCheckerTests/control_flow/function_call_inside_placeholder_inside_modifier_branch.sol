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
// Warning 5084: (247-257): Type conversion is not yet fully supported and might yield false positives.
// Warning 5084: (162-172): Type conversion is not yet fully supported and might yield false positives.
// Warning 5084: (247-257): Type conversion is not yet fully supported and might yield false positives.
