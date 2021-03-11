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
// ====
// SMTIgnoreCex: yes
// ----
// Warning 6328: (390-404): CHC: Assertion violation happens here.
// Warning 6328: (408-434): CHC: Assertion violation happens here.
