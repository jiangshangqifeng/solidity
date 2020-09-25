contract A {
    address public immutable user = address("atp1qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqdruy9j");
}

contract Test {
    function test() public pure returns(bytes memory) {
        return type(A).creationCode;
    }
}
