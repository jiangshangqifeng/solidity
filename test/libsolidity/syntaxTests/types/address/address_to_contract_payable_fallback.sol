contract C {
  function f() public pure returns (C c) {
    c = C(address(uint160(0)));
  }
  fallback() external payable {
  }
}
// ----
// Warning 3628: (0-129): This contract has a payable fallback function, but no receive lat function. Consider adding a receive ether function.
