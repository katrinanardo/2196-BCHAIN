// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.20;

contract GlobalVariables {
    function globalVars() external view returns (address, uint, uint) {
        address sender = msg.sender;
        uint timestamp = block.timestamp;
        uint blockNum = block.number;
        return (sender, timestamp, blockNum);
    }
}

//Global variables in Solidity serve several crucial purposes in smart contract development. 
//They provide essential information about the blockchain state and transaction context, which your 
//contract can leverage to execute relevant logic dynamically. For example, using block.timestamp helps 
//you create time-sensitive actions or promotions.