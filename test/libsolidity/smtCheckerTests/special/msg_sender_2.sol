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
