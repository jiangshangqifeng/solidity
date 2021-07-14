contract C {
    receive () payable external { }
}
// ====
// compileViaYul: also
// compileToEwasm: also
// ----
// (), 1 atp
// (), 1 atp: 1 -> FAILURE
