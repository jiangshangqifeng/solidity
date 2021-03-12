contract C {
    function f() public pure {
        // We allow an exception for 0
        address payable a = payable(uint160(0));
        a = address(uint160(1));
        address payable b = payable('lat1qy352eufqy352eufqy352eufqy352eufhsss4r');
        b = 'lat1npm9gvssnpm9gvssnpm9gvssnpm9gvsskvvxva';
    }
}
