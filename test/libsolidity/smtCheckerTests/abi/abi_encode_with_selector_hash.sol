pragma experimental SMTChecker;
contract C {
	function abiEncodeHash(bytes4 sel, uint a, uint b) public pure {
		require(a == b);
		bytes memory b1 = abi.encodeWithSelector(sel, a, a, a, a);
		bytes memory b2 = abi.encodeWithSelector(sel, b, a, b, a);
		assert(keccak256(b1) == keccak256(b2));

		bytes memory b3 = abi.encodeWithSelector(0xcafecafe, a, a, a, a);
		assert(keccak256(b1) == keccak256(b3)); // should fail
		assert(keccak256(b1) != keccak256(b3)); // should fail
	}
}
// ----
// Warning 6328: (365-403): CHC: Assertion violation happens here.
// Warning 6328: (422-460): CHC: Assertion violation happens here.
