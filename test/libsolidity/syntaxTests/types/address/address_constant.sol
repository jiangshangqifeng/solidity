contract C {
    address constant a = address("atp1qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqdruy9j");
    address payable constant b = address(uint160(0));
    function f() public pure returns (address, address) {
        return (a,b);
    }
}
