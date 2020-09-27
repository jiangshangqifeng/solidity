contract C {
    function f() public pure {
        address payable a = address(uint160(0));
        a = address(uint160(1));
        address payable b = 'atp1qy352eufqy352eufqy352eufqy352eufwxxg2v';
        b = 'atp1npm9gvssnpm9gvssnpm9gvssnpm9gvss0667nj';
    }
}
