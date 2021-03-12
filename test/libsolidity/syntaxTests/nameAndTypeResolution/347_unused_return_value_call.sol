contract test {
    function f() public {
        address("lat1qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqjj3r8ur").call("abc");
    }
}
// ----
// Warning 9302: (50-115): Return value of low-level calls not used.
