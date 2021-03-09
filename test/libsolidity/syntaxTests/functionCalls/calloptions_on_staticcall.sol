contract C {
    function foo() pure internal {
        address('lat1qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqsp5zy0w').staticcall{value: 7, gas: 3}("");
    }
}
// ====
// EVMVersion: >=byzantium
// ----
// TypeError 2842: (56-96): Cannot set option "value" for staticcall.
// Warning 9302: (56-100): Return value of low-level calls not used.
