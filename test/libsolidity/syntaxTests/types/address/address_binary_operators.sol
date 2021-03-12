contract C {
    address a;
    function f() public pure returns(bool) {
        a = address('lat1qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq542u6a') + address('lat1qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq542u6a');
        a = address('lat1qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq542u6a') - address('lat1qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq542u6a');
        a = address('lat1qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq542u6a') * address('lat1qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq542u6a');
        a = address('lat1qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq542u6a') / address('lat1qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq542u6a');
        return address('lat1qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq542u6a') == address('lat1qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq542u6a');
    }
}
// ----
// TypeError 2271: (85-194): Operator + not compatible with types address and address. Arithmetic operations on addresses are not supported. Convert to integer first before using them.
// TypeError 2271: (208-317): Operator - not compatible with types address and address. Arithmetic operations on addresses are not supported. Convert to integer first before using them.
// TypeError 2271: (331-440): Operator * not compatible with types address and address. Arithmetic operations on addresses are not supported. Convert to integer first before using them.
// TypeError 2271: (454-563): Operator / not compatible with types address and address. Arithmetic operations on addresses are not supported. Convert to integer first before using them.
