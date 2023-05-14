// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract ErrorHandling {
    uint public number;

    function requirenumber(uint _testnumber) public {
        require(_testnumber > 0, "Number provided must be greater than 0");
        number = _testnumber;
    }

    function assertnumber(uint _testnumber) public {
        assert(_testnumber > 0);
        number = _testnumber;
    }

    function revertnumber(uint _testnumber) public {
        if (number == 0){
            revert("Number cannot be 0.");
        }
        number = _testnumber;
    }

}
