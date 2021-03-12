pragma experimental SMTChecker;

contract C {
  address x; // We know that this is "zero initialised".
  function f() public view {
    address a = address('lat1qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq542u6a');
    assert(x == address('lat1qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq542u6a'));
    assert(x == a);
  }

  function g() public pure {
    address a = address('lat1qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq542u6a');
    address b = address('lat1qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqpfr7f80');
    address c = address('lat1qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq542u6a');
    address d = a;
    address e = address('lat1qqqqqqqqqqqqqqqqqqqqqqqqqqfrg4nc8hm8en');
    assert(c == d);
    assert(a == c);
    assert(e == address('lat1qqqqqqqqqqqqqqqqqqqqqqqqqqfrg4nc8hm8en'));
    // This is untrue.
    assert(a == b);
  }
}
// ----
// Warning 6328: (771-785): CHC: Assertion violation happens here.
