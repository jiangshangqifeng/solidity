contract C {
    function f() public pure {
        // 0 is okay, because it's an exception
        address payable a = payable(0);

        // address literals have type address
        address payable b = payable('lat1qqqqqqppn265qdtvhwpee0s9xq7hwp06c43w0a');

        address payable c = payable(address('lat1qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqz8stlfs'));

        a; b; c;
    }
}
