pragma experimental SMTChecker;

contract C {
    uint a;
    bool b;

    function f() public returns(uint c) {
        c = b ? a + 1 : a--;
        assert(c > a);
    }
}
// ----
// Warning 4984: (129-134): CHC: Overflow (resulting value larger than 2**256 - 1) happens here.
// Warning 3944: (137-140): CHC: Underflow (resulting value less than 0) happens here.
// Warning 6328: (150-163): CHC: Assertion violation happens here.
