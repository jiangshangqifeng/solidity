contract C {
    address constant a = address("lat1qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq542u6a");
    address payable constant b = payable('lat1qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq542u6a');
    function f() public pure returns (address, address) {
        return (a,b);
    }
}
