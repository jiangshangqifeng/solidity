contract C {
    receive () payable external { }
}
// ====
// compileViaYul: also
// compileToEwasm: also
// ----
// (), 1 lat
// (), 1 lat: 1 -> FAILURE
