contract C {
  function f() public pure returns (C c) {
    c = C(address("lat1qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqz8stlfs”));
  }
  fallback() external payable {
  }
}
// ----
// Warning 3628: (0-120): This contract has a payable fallback function, but no receive ether function. Consider adding a receive ether function.
