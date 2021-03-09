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
// TypeError 2271: (85-108): Operator + not compatible with types address payable and address payable. Arithmetic operations on addresses are not supported. Convert to integer first before using them.
// TypeError 2271: (122-145): Operator - not compatible with types address payable and address payable. Arithmetic operations on addresses are not supported. Convert to integer first before using them.
// TypeError 2271: (159-182): Operator * not compatible with types address payable and address payable. Arithmetic operations on addresses are not supported. Convert to integer first before using them.
// TypeError 2271: (196-219): Operator / not compatible with types address payable and address payable. Arithmetic operations on addresses are not supported. Convert to integer first before using them.
