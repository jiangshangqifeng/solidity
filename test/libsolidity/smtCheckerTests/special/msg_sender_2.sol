pragma experimental SMTChecker;

contract C
{
	function f() public view {
		require(msg.sender != address("lat1qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq542u6a"));
		address a = msg.sender;
		address b = msg.sender;
		assert(a == b);
	}
}
// ----
// Warning 5084: (98-108): Type conversion is not yet fully supported and might yield false positives.
