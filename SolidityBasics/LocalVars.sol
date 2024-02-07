// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.20;

contract LocalVariables {
    uint public i;
    bool public b;
    address public myAddress;

    function foo() external {
        uint x = 123;
        bool f = false;
        x += 456;
        f = true;

        i = 123;
        b = true;
        myAddress = address(1);




    }
}

//Local Variables limit variable accessibility, preventing conflicts and accidental modifications from other parts of the contract.
//It is ideal for holding temporary data, intermediate calculations, function arguments, and return values. 
//They promote modularity and code organization.
