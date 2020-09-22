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
// Warning 5084: (275-285): Type conversion is not yet fully supported and might yield false positives.
// Warning 5084: (123-133): Type conversion is not yet fully supported and might yield false positives.
// Warning 5084: (275-285): Type conversion is not yet fully supported and might yield false positives.
// Warning 5084: (189-199): Type conversion is not yet fully supported and might yield false positives.
// Warning 5084: (275-285): Type conversion is not yet fully supported and might yield false positives.
