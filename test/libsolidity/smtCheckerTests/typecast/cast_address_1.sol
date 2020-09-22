pragma experimental SMTChecker;

contract C
{
	function f(address a) public pure {
		require(a != address("lat1qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq542u6a"));
		assert(a != address("lat1qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq542u6a"));
	}
}
// ----
// Warning 5084: (98-108): Type conversion is not yet fully supported and might yield false positives.
// Warning 5084: (125-135): Type conversion is not yet fully supported and might yield false positives.
