pragma experimental SMTChecker;
contract C {
	function f(string memory sig, uint x, uint[] memory a) public pure {
		bytes memory b1 = abi.encodeWithSignature(sig, x, a);
		bytes memory b2 = abi.encodeWithSelector(bytes4(keccak256(bytes(sig))), x, a);
		// should hold but we do not evaluate keccak256 in an interpreted way
		assert(b1.length == b2.length);
	}
}
// ----
// Warning 1218: (326-356): CHC: Error trying to invoke SMT solver.
// Warning 6328: (326-356): CHC: Assertion violation might happen here.
// Warning 7812: (326-356): BMC: Assertion violation might happen here.
