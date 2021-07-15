pragma experimental SMTChecker;


contract A {

    address constant public MY_ADDRESS = 'atp1ur6jq6aaqw08kpvjmzgcsgqzfc48gdaehdg6t7';
    address public myFriendsAddress = 'atp1crl7uf289y5k53dr3ptrntr7zrua2jtezvjyjy';

    uint public used;
    uint public test = 5;

    uint constant X = 32**22 + 8;
    string constant TEXT1 = "abc";
    string text2 = "xyz";

    function setUsed() public {
        if (msg.sender == MY_ADDRESS) {
            used = test;
        }
    }
}


contract B is A {

    address public mySistersAddress = 'atp1nxvenncsgmngudhp4ghqupcstmwaruywdncnm7';

    fallback () external {
        used = 0;
    }

    function setUsed(uint a) public {
        if (msg.sender == MY_ADDRESS) {
            used = a;
        }
    }
}

contract MyConc{

    uint constant A = 1;
    bytes32 should_be_constant = sha256('abc');
    uint should_be_constant_2 = A + 1;
    address not_constant = msg.sender;
    uint not_constant_2 = getNumber();
    uint not_constant_3 = 10 + block.number;

    function getNumber() public returns(uint){
        return block.number;
    }

}
// ====
// SMTIgnoreCex: yes
// ----
// Warning 2519: (779-798): This declaration shadows an existing declaration.
// Warning 2018: (1015-1092): Function state mutability can be restricted to view
// Warning 4984: (991-1008): CHC: Overflow (resulting value larger than 2**256 - 1) happens here.
