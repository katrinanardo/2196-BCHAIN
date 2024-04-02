// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.10;

contract EtherWallet {

  address payable public owner;

  constructor() {
    owner = payable(msg.sender);
  }

  receive() external payable {}

  function withdraw(uint _amount) external {
    require(msg.sender == owner, "Only owner can withdraw funds");

    require(address(this).balance >= _amount, "Insufficient funds");
    (bool success, ) = owner.call{value: _amount}("");
    require(success, "Failed to withdraw Ether");
  }

  function getBalance() external view returns (uint) {
    return address(this).balance;
  }
}
