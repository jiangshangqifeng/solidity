contract C {
  function f() public pure returns (C c) {
    address a = address('lat1qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqz8stlfs');
    c = C(a);
  }
  fallback() external payable {
  }
}
// ----
// Warning 3628: (0-139): This contract has a payable fallback function, but no receive lat function. Consider adding a receive lat function.
// TypeError 7398: (92-96): Explicit type conversion not allowed from non-payable "address" to "contract C", which has a payable fallback function.
