contract C {
    function f(address payable) internal pure {}
    function f(address) internal pure {}
    function g() internal pure {
        address payable a = payable('lat1qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq542u6a');
        f(a);
    }
}
// ----
// TypeError 4487: (218-219): No unique declaration found after argument-dependent lookup.
