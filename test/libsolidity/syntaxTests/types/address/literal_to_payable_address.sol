contract C {
    function f() public pure {
        // We allow an exception for 0
        address payable a = payable('lat1qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq542u6a');
        a = payable('lat1qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqpfr7f80');
        address payable b = payable('lat1qy352eufqy352eufqy352eufqy352eufhsss4r');
        b = payable('lat1npm9gvssnpm9gvssnpm9gvssnpm9gvsskvvxva');
    }
}
