pragma experimental SMTChecker;
contract C {
	function f(bytes memory data) public pure {
		(uint a1, bytes32 b1, C c1) = abi.decode(data, (uint, bytes32, C));
		(uint a2, bytes32 b2, C c2) = abi.decode(data, (uint, bytes32, C));
		assert(a1 == a2);
		assert(a1 != a2);
	}
}
// ----
// Warning 2072: (85-95): Unused local variable.
// Warning 2072: (97-101): Unused local variable.
// Warning 2072: (156-166): Unused local variable.
// Warning 2072: (168-172): Unused local variable.
// Warning 8364: (139-140): Assertion checker does not yet implement type type(contract C)
// Warning 4588: (105-142): Assertion checker does not yet implement this type of function call.
// Warning 8364: (210-211): Assertion checker does not yet implement type type(contract C)
// Warning 4588: (176-213): Assertion checker does not yet implement this type of function call.
// Warning 6328: (293-309): CHC: Assertion violation happens here.
// Warning 6328: (313-329): CHC: Assertion violation happens here.
// Warning 8364: (139-140): Assertion checker does not yet implement type type(contract C)
// Warning 4588: (105-142): Assertion checker does not yet implement this type of function call.
// Warning 8364: (210-211): Assertion checker does not yet implement type type(contract C)
// Warning 4588: (176-213): Assertion checker does not yet implement this type of function call.
