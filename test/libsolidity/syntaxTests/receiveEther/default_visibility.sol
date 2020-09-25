contract C {
    // Check that visibility is also enforced for the receive atp function.
    receive() {}
}
// ----
// SyntaxError 4937: (93-105): No visibility specified. Did you intend to add "external"?
// TypeError 7793: (93-105): Receive atp function must be payable, but is "nonpayable".
// TypeError 4095: (93-105): Receive atp function must be defined as "external".
