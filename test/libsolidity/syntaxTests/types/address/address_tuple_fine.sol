contract C {
    function f() public view returns (address payable a, address b) {
        (address c, address payable d) = (address(this), address("lat1qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq542u6a"));
        (a,b) = (d,c);
    }
}
