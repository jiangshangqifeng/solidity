contract C {
  function f() public view {
    C c = address('lat1qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqz8stlfs');
  }
}
// ----
// TypeError 9574: (46-62): Type address payable is not implicitly convertible to expected type contract C.
