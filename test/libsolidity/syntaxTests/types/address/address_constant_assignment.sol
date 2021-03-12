contract C {
    address constant a = address('lat1qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq542u6a');
    address payable constant b = payable('lat1qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq542u6a');
    function f() public {
        a = address('lat1qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq542u6a');
        b = payable('lat1qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq542u6a');
    }
}
// ----
// TypeError 6520: (197-198): Cannot assign to a constant variable.
// TypeError 6520: (255-256): Cannot assign to a constant variable.
