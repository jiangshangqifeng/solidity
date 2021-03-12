pragma experimental SMTChecker;

contract C
{
	uint x;

	modifier m {
		require(x > 0);
		_;
		// Fails because of overflow behavior.
		assert(x > 1);
	}

	function f() m public {
		assert(x > 0);
		unchecked { x = x + 1; }
	}

	function g(uint _x) public {
		x = _x;
	}
}
// ----
// Warning 6328: (136-149): CHC: Assertion violation happens here.
