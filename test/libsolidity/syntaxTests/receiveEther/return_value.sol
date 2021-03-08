contract C {
    receive() external returns (uint256) {}
}
// ----
// TypeError 7793: (17-56): Receive lat function must be payable, but is "nonpayable".
// TypeError 6899: (44-53): Receive lat function cannot return values.
