contract C {
  function f() public pure returns (C c) {
    address a = address('lat1qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqz8stlfs');
    c = C(a);
  }
  receive() external payable {
  }
}
// ----
// TypeError 7398: (135-139): Explicit type conversion not allowed from non-payable "address" to "contract C", which has a payable fallback function.
