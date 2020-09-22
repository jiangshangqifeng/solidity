contract test {
    function f() public {
        address("lax1qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqja53gjv").call.value(2)("abc");
        address("lax1qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqja53gjv").call{value: 2}("abc");
    }
}
// ----
// Warning 1621: (50-74): Using ".value(...)" is deprecated. Use "{value: ...}" instead.
// Warning 9302: (50-84): Return value of low-level calls not used.
// Warning 9302: (94-129): Return value of low-level calls not used.
