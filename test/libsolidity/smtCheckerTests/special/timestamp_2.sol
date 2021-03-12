pragma experimental SMTChecker;

contract C {
	uint x;

	constructor() {
		x = block.timestamp + 0; // No overflow should be reported
		x = block.timestamp + 1; // Overflow should be reported here
	}
}
// ----
// Warning 4984: (140-159): CHC: Overflow (resulting value larger than 2**256 - 1) happens here.
