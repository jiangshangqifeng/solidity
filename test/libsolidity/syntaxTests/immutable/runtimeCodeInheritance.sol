contract Base {
    address public immutable user = address('lat1qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq542u6a');
}

contract Derived is Base {}

contract Test {
    function test() public pure returns(bytes memory) {
        return type(Derived).runtimeCode;
    }
}
// ----
// TypeError 9274: (226-251): "runtimeCode" is not available for contracts containing immutable variables.
