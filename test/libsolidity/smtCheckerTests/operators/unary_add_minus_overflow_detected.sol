pragma experimental SMTChecker;
contract C {
	uint8 x;

	function inc_pre() public {
		++x;
	}

	function dec_pre() public {
		--x;
	}

    /* Commented out because Spacer segfaults in Z3 4.8.9
	function inc_post() public {
		x++;
	}

    function dec_post() public {
		x--;
	}
    */
}
// ----
// Warning 4984: (87-90): CHC: Overflow (resulting value larger than 255) happens here.
// Warning 3944: (127-130): CHC: Underflow (resulting value less than 0) happens here.
