pragma experimental SMTChecker;

contract C {
	uint256[] public a;

	function f() public {
		require(a.length == 0);
		uint256[] storage x = a;
		assert(x.length == 0); // should hold
		uint256 i = 7;
		assembly {
			sstore(x.slot, 7)
		}
		assert(x.length == 0); // should fail
		assert(x.length == 7); // should hold, but the analysis cannot know this yet
		assert(i == 7); // should hold, not changed by the assembly
	}
}
// ====
// SMTIgnoreCex: yes
// ----
// Warning 7737: (203-238): Inline assembly may cause SMTChecker to produce spurious warnings (false positives).
// Warning 6328: (241-262): CHC: Assertion violation might happen here.
// Warning 6328: (281-302): CHC: Assertion violation might happen here.
// Warning 7737: (203-238): Inline assembly may cause SMTChecker to produce spurious warnings (false positives).
// Warning 4661: (241-262): BMC: Assertion violation happens here.
// Warning 4661: (281-302): BMC: Assertion violation happens here.
