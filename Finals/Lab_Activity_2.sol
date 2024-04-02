// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.10;

contract MyFinalsActivity2 {
    event PaymentReceived(uint amount);
    address payable public owner;

    constructor() {
        owner = payable(msg.sender);
    }

    receive() external payable { 
        emit PaymentReceived(msg.value);
    }
}