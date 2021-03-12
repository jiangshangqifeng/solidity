contract test {
    function f() public {
        payable(address('lat1qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqjj3r8ur')).send(1);
    }
}
// ----
// Warning 5878: (50-80): Failure condition of 'send' ignored. Consider using 'transfer' instead.
