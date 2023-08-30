// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract ErrorHandling {
    uint public number1;
    uint public number2;
    uint public number3;

    function requirenumber(uint _testnumber1) public {
        require(_testnumber1 < 10, "Number provided must be less than 10");
        number1 = _testnumber1;
    } 

    function assertnumber(uint _testnumber2) public {
        assert(_testnumber2 > 0);
        number2 = _testnumber2;
    }

    function revertnumber(uint _testnumber3) public {
        if (number3 == 0){
            revert("Number cannot be 0.");
        }
        number3 = _testnumber3;
    }

}
