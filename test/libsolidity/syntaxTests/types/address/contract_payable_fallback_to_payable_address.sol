contract C {
  function f() public view {
    address payable a = address(this);
    a;
  }
  fallback() external payable {
  }
}
// ----
// Warning 3628: (0-129): This contract has a payable fallback function, but no receive lat function. Consider adding a receive lat function.
