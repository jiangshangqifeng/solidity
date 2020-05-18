contract test {
    function f() public {
        address("lat1qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqjj3r8ur").delegatecall("abc");
    }
}
// ----
// Warning: (50-123): Return value of low-level calls not used.
