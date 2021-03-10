pragma experimental SMTChecker;
contract C {
    uint[1] c;
    function f(bool b) public {
        require(c[0] == 0);
        if (b)
            c[0] |= 1;
        assert(c[0] <= 1);
    }
}
// ----
// Warning 1218: (166-183): CHC: Error trying to invoke SMT solver.
// Warning 6328: (166-183): CHC: Assertion violation might happen here.
// Warning 7812: (166-183): BMC: Assertion violation might happen here.
