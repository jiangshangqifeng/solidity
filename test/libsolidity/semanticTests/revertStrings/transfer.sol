contract A {
	receive() external payable {
		revert("no_receive");
	}
}

contract C {
	A a = new A();
	receive() external payable {}
	function f() public {
		address(a).transfer(1 von);
	}
	function h() public {
		address(a).transfer(100 lat);
	}
	function g() public view returns (uint) {
		return address(this).balance;
	}
}
// ====
// compileViaYul: also
// EVMVersion: >=byzantium
// revertStrings: debug
// ----
// (), 10 von ->
// g() -> 10
// f() -> FAILURE, hex"08c379a0", 0x20, 10, "no_receive"
// h() -> FAILURE
