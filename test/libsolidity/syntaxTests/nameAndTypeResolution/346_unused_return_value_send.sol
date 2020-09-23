contract test {
    function f() public {
        address("lat1qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqjj3r8ur").send(1);
    }
}
// ----
// TypeError 9862: (50-108): "send" and "transfer" are only available for objects of type "address payable", not "address".
