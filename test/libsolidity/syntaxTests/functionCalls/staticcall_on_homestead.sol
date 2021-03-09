contract C {
    function f() public {
        (bool success, ) = address('lat1qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqsp5zy0w').staticcall{gas: 3}("");
        success;
    }
}
// ====
// EVMVersion: <byzantium
// ----
// TypeError 5052: (66-100): "staticcall" is not supported by the VM version.
