contract A {
    address public immutable user = address("lat1qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq542u6a");
}

contract Test {
    function test() public pure returns(bytes memory) {
        return type(A).creationCode;
    }
}
