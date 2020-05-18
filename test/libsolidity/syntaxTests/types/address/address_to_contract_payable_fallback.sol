contract C {
  function f() public pure returns (C c) {
    c = C(address("lat1qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqz8stlfs”));
  }
  function() external payable {
  }
}
// ----
// ParserError: (74-123): Expected string end-quote.
