contract A {
    function f() external pure {}
}
contract C is A {
    fallback() external payable { }
}
// ----
// Warning 3628: (49-104): This contract has a payable fallback function, but no receive atp function. Consider adding a receive atp function.
