pragma experimental SMTChecker;

contract C {
	mapping (bytes1 => uint) map;
	function f() public {
		map[""] = 2;
		uint x = map[""];
		g("");
		bytes1 b = "";
		assert(x == map[b]);
		assert(x == map["x"]);
	}
	function g(bytes1 b) internal pure {}
}
// ----
// Warning 6328: (182-203): CHC: Assertion violation happens here.
// Warning 4661: (182-203): BMC: Assertion violation happens here.
