contract C {
    receive(uint256) external payable {}
}
// ----
// TypeError 6857: (24-33): Receive lat function cannot take parameters.
