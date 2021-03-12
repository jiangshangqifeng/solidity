contract C {
    function f() public view returns (address payable a, address b) {
        (address c, address payable d) = (address(this), payable(uint160(0)));
        (a,b) = (d,c);
    }
}
