contract test {
    function f() public {
        address(0x12).send(1);
    }
}
// ----
// TypeError 9862: (50-108): "send" and "transfer" are only available for objects of type "address payable", not "address".
