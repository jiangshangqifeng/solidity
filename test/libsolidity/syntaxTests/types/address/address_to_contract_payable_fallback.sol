contract C {
  function f() public pure returns (C c) {
    c = C(address(2));
  }
  fallback() external payable {
  }
}
// ----
// Warning 3628: (0-120): This contract has a payable fallback function, but no receive atp function. Consider adding a receive atp function.
