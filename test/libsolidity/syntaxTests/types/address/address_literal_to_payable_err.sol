contract C {
    function f() public pure {
        address payable a = address('lat1qqqqqqppn265qdtvhwpee0s9xq7hwp06c43w0a');
        address payable b = 'lat1qqqqqqppn265qdtvhwpee0s9xq7hwp06c43w0a';
    }
}
// ----
// TypeError 9574: (52-125): Type address is not implicitly convertible to expected type address payable.
// TypeError 9574: (135-199): Type address is not implicitly convertible to expected type address payable.
