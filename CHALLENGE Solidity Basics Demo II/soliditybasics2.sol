// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Ownable {

    address public owner;
    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
    
    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "not owner");
        _;
    }


    function transferOwnership(address newOwner) external onlyOwner {
        require( newOwner != address(0), "invalid address");
        owner = newOwner;

        emit OwnershipTransferred(msg.sender, newOwner);
        
    }

}

contract MyContract is Ownable {
    uint256 public someValue;

    function setSomeValue(uint256 _value) external onlyOwner{
        someValue = _value;
    }
}