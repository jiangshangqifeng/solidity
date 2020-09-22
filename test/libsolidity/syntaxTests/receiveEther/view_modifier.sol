contract C {
    uint x;
    receive() external view { x = 2; }
}
// ----
// TypeError 7793: (29-63): Receive lat function must be payable, but is "view".
