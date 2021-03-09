contract C {
    address constant a = address('lat1qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq542u6a');
    address payable constant b = address('lat1qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq542u6a');
    function f() public {
        a = address('lat1qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq542u6a');
        b = address('lat1qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq542u6a');
    }
}
// ----
// TypeError 6520: (129-130): Cannot assign to a constant variable.
// TypeError 6520: (153-154): Cannot assign to a constant variable.
