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
// Warning 5084: (249-259): Type conversion is not yet fully supported and might yield false positives.
// Warning 5084: (118-128): Type conversion is not yet fully supported and might yield false positives.
// Warning 5084: (249-259): Type conversion is not yet fully supported and might yield false positives.
