contract C {
  function f() public pure returns (C c) {
    c = C(address(uint160(2)));
  }
  receive() external payable {
  }
}
// ----
