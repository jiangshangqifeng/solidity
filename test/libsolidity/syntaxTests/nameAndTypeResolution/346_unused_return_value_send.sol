contract test {
    function f() public {
        address("lat1qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqjj3r8ur").send(1);
    }
}
// ----
// Warning: (50-111): Failure condition of 'send' ignored. Consider using 'transfer' instead.
