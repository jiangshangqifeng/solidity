pragma experimental SMTChecker;

contract C {
    modifier add(uint16 a, uint16 b) {
        unchecked { a + b; } // overflow not reported
        _;
    }

    function f(uint16 a, uint16 b, uint16 c) public pure add(a, b) returns (uint16) {
        return b + c; // can overflow
    }
}
// ----
// Warning 4984: (258-263): CHC: Overflow (resulting value larger than 65535) happens here.
