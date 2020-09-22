pragma experimental SMTChecker;

contract C
{
	function f(address a) public pure {
		require(a != address("lat1qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq542u6a"));
		assert(a != address("lat1qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq542u6a"));
	}
}
// ----
