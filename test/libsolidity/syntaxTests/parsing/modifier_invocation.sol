contract c {
    modifier mod1(uint a) { if (msg.sender == address("lat1qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq2ey0nhd")) _; }
    modifier mod2 { if (msg.sender == address("lat1qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq2ey0nhd")) _; }
    function f() public mod1(7) mod2 { }
}
// ----
