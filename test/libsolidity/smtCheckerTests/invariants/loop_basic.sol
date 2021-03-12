pragma experimental SMTChecker;

contract Simple {
	function f(uint x) public pure {
		uint y;
		require(x > 0);
		while (y < x)
			++y;
		assert(y == x);
	}
}
// ====
// SMTSolvers: z3
// ----
// Warning 1218: (132-135): CHC: Error trying to invoke SMT solver.
// Warning 4984: (132-135): CHC: Overflow (resulting value larger than 2**256 - 1) might happen here.
