contract C {
    function f() public pure {
        address payable a = payable(address('lat1qqqqqqppn265qdtvhwpee0s9xq7hwp06c43w0a'));
        address payable b = payable('lat1qqqqqqppn265qdtvhwpee0s9xq7hwp06c43w0a');
        a = b;
        b = a;
    }
}
// ----
