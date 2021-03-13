pragma experimental SMTChecker;

contract C {
    function f(int a, int b) public pure returns (int) {
        return a % b; // can div by 0
    }
    function g(bool _check) public pure returns (int) {
        int x = type(int).min;
        if (_check) {
            return x / -1; // can overflow
        } else {
            unchecked { return x / -1; } // overflow not reported
        }
    }
}
// ----
// Warning 4281: (118-123): CHC: Division by zero happens here.
// Warning 4984: (275-281): CHC: Overflow (resulting value larger than 0x80 * 2**248 - 1) happens here.
