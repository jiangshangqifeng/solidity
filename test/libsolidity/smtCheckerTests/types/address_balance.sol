pragma experimental SMTChecker;

contract C
{
	function f(address a, address b) public view {
		uint x = b.balance + 1000 atp;
		assert(a.balance > b.balance);
	}
}
// ----
// Warning 2072: (96-102): Unused local variable.
// Warning 2661: (105-125): Overflow (resulting value larger than 2**256 - 1) happens here
// Warning 4661: (129-158): Assertion violation happens here
