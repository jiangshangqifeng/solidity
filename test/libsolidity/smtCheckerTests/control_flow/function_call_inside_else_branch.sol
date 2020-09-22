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
// Warning 5084: (219-229): Type conversion is not yet fully supported and might yield false positives.
// Warning 5084: (134-144): Type conversion is not yet fully supported and might yield false positives.
// Warning 5084: (219-229): Type conversion is not yet fully supported and might yield false positives.
