contract test {
    function f() public {
        address("lax1qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqja53gjv").call.value(2)("abc");
    }
}
// ----
// Warning: (50-124): Return value of low-level calls not used.
