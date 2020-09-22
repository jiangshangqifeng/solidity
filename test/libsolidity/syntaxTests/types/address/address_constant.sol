contract C {
    address constant a = address("lat1qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq542u6a");
    address payable constant b = address(uint160(0));
    function f() public pure returns (address, address) {
        return (a,b);
    }
}
