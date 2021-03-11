pragma experimental SMTChecker;
contract C {
    int[1][20] c;
    function f(bool b) public {
	    require(c[10][0] == 0);
        if (b)
            c[10][0] |= 1;
        assert(c[10][0] == 0 || c[10][0] == 1);
    }
}
// ----
// Warning 1218: (174-212): CHC: Error trying to invoke SMT solver.
// Warning 6328: (174-212): CHC: Assertion violation might happen here.
// Warning 7812: (174-212): BMC: Assertion violation might happen here.
