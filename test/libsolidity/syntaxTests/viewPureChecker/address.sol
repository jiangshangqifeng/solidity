contract C {
    function f() public view returns (uint) {
        return address(this).balance;
    }
    function g() public view returns (uint) {
        return address('lat1qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq542u6a').balance;
    }
}
