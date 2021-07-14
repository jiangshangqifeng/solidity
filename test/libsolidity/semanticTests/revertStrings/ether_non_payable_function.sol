contract C {
	function f() public {}
}
// ====
// EVMVersion: >=byzantium
// revertStrings: debug
// ----
// f(), 1 atp -> FAILURE, hex"08c379a0", 0x20, 0x20, "Atp sent to non-payable function"
// () -> FAILURE, hex"08c379a0", 0x20, 53, "Contract does not have fallback ", "nor receive functions"
