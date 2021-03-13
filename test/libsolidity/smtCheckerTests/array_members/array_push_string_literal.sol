pragma experimental SMTChecker;
contract C {
	bytes data;
	function g() public {
		require(data.length == 0);
		data.push("b");
		assert(data[0] == "b"); // should hold
		assert(data[0] == "c"); // should fail
		delete data;
		data.push(hex"01");
		assert(uint8(data[0]) == 1); // should hold
		assert(uint8(data[0]) == 0); // should fail
	}
}
// ----
// Warning 6328: (171-193): CHC: Assertion violation might happen here.
// Warning 6328: (295-322): CHC: Assertion violation might happen here.
// Warning 4661: (171-193): BMC: Assertion violation happens here.
// Warning 4661: (295-322): BMC: Assertion violation happens here.
