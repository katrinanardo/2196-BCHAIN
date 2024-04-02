// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyFinalsActivity2 {
    address payable public owner;
    uint256 public creationTime;
    uint256 public constant INITIAL_ETH_AMOUNT = 2 ether;
    uint256 public remainingEth;

    event EtherReceived(address indexed from, uint256 amount);
    event EtherSent(address indexed to, uint256 amount);

    modifier onlyOwner() {
        require(msg.sender == owner, "Only the owner can call this function.");
        _;
    }

    constructor() {
        owner = payable(msg.sender);
        creationTime = block.timestamp;
        remainingEth = INITIAL_ETH_AMOUNT;
    }

    receive() external payable {
        emit EtherReceived(msg.sender, msg.value);
    }

    fallback() external payable {
        emit EtherReceived(msg.sender, msg.value);
    }
    
    function getBalance() public view returns (uint256) {
        return address(this).balance;
    }

    function sendEther(address payable _recipient, uint256 _amount) public onlyOwner {
        require(_recipient != address(0), "Invalid recipient address.");
        require(_amount <= remainingEth, "Insufficient funds in the contract.");
        remainingEth -= _amount;
        _recipient.transfer(_amount);
        emit EtherSent(_recipient, _amount);
    }

    function destroy() public onlyOwner {
        selfdestruct(owner);
    }

    function withdraw() public onlyOwner {
        uint256 balance = address(this).balance;
        require(balance > 0, "Contract balance is zero");
        owner.transfer(balance);
    }
}