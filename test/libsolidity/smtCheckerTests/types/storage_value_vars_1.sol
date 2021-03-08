pragma experimental SMTChecker;
contract C
{
    address a;
    bool b;
    uint c;
    function f(uint x) public {
        if (x == 0)
        {
            a = 'lat1qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqgqhtfnsy';
            b = true;
        }
        else
        {
            a = 'lat1qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqsqjqvzwx';
            b = false;
        }
        assert(a > 'lat1qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq542u6a' && b);
    }
}
// ----
// Warning 6328: (362-421): CHC: Assertion violation happens here.\nCounterexample:\na = 512, b = false, c = 0\nx = 1\n\n\nTransaction trace:\nconstructor()\nState: a = 0, b = false, c = 0\nf(1)
