contract C {
  function f() public pure returns (C c) {
    c = C(payable(address('lat1qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqz8stlfs')));
  }
  fallback() external payable {
  }
}
// ----
// Warning 3628: (0-129): This contract has a payable fallback function, but no receive lat function. Consider adding a receive lat function.
