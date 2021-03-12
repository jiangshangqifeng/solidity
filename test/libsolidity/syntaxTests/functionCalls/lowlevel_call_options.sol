contract C {
    function foo() internal {
        (bool success, ) = address('lat1qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqsp5zy0w').call{value: 7, gas: 3}("");
        success;
    }
}
// ----
