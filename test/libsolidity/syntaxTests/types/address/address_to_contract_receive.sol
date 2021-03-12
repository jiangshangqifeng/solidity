contract C {
  function f() public pure returns (C c) {
    c = C(payable(address('lat1qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqz8stlfs')));
  }
  receive() external payable {
  }
}
// ----
