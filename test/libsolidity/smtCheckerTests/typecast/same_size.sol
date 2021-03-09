pragma experimental SMTChecker;

abstract contract D {}

enum E {A, B}

contract C {
	function f1() public pure {
		// signed <- unsigned
		int8 x = int8(uint8(200));
		assert(x == -56);
		int256 y = int256(uint256(2**255 + 10));
		assert(y == -(2**255) + 10);
		int256 z = int256(2**255 + 10);
		assert(z == -(2**255) + 10);
		int256 t = int256(bytes32(uint256(200)));
		assert(t == 200);
		int256 v = int256(bytes32(uint256(2**255 + 10)));
		assert(v == -(2**255) + 10);
		int160 a = int160(address(-1));
		assert(a == -1);
		int160 b = int160(address(2**159 + 10));
		assert(b == -(2**159) + 10);
		D d;
		int160 e = int160(address(d));
		assert(e == 0);
	}

	function f2() public pure {
		// unsigned <- signed
		uint8 x = uint8(int8(100));
		assert(x == 100);
		uint8 y = uint8(int8(200));
		assert(y == 200);
		uint8 z = uint8(int8(-100));
		assert(z == 156);
		uint8 t = uint8(int8(-200));
		assert(t == 56);
		uint256 v = uint256(int256(-200));
		assert(v == 2**256 - 200);
		uint256 w = uint256(-2);
		assert(w == 2**256 - 2);
		bytes4 b = bytes4(uint32(-2));
		assert(uint32(b) == uint32(2**32 - 2));
		address a = address(-1);
		assert(uint160(a) == uint160(2**160 - 1));
		address c = address('lat1qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq542u6a');
		assert(uint160(c) == 0);
		D d;
		address e = address(d);
		assert(uint160(e) == 0);
		E f = E(1);
		assert(uint(f) == 1);
	}

	function f3() public pure {
		// unsigned <- unsigned
		uint8 x = uint8(bytes1(uint8(100)));
		assert(x == 100);
		address a = address('lat1qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq542u6a');
		assert(a == address(uint160(0)));
		D d;
		assert(a == address(d));
	}

	function f4() public pure {
		// signed <- signed
		int8 x = -10;
		int8 y = int8(x);
		assert(y == -10);
	}
}
// ----
