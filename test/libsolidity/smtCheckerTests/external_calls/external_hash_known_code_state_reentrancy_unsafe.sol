pragma experimental SMTChecker;

contract State {
	uint x;
	C c;
	function f() public returns (uint) {
		c.setOwner(address(uint160(0)));
		return c.g();
	}
}

contract C {
	address owner;
	uint y;
	State s;

	constructor() {
		owner = msg.sender;
	}

	function setOwner(address _owner) public {
		owner = _owner;
	}

	function f() public {
		address prevOwner = owner;
		uint z = s.f();
		assert(z == y);
		assert(prevOwner == owner);
	}

	function g() public view returns (uint) {
		return y;
	}
}
// ----
// Warning 5084: (124-134): Type conversion is not yet fully supported and might yield false positives.
// Warning 4661: (397-411): Assertion violation happens here
// Warning 4661: (415-441): Assertion violation happens here
