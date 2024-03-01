// SPDX-License-Identifier: MIT

pragma solidity ^0.8.3; //Indicate Solidity version

contract MQuizContract {
    //Define relevant state variables
    uint256 public age;
    uint256 public hoursWorked;
    uint256 public hourlyRate;
    uint public totalSalary;
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    //callable only by the contract owner
    modifier onlyOwner() {
        require(msg.sender == owner, "not owner");
        _;
    }
    //hourly rate & hours worked are greater than zero
    modifier nonZeroValue(uint256 _value) {
        require(_value !=0, "Value cannot be zero");
        _;
    }

    function setAge(uint256 _age) external {
        age = _age;
    }

    function setHrsWrk(uint256 _hoursWorked) external nonZeroValue(_hoursWorked){
        hoursWorked = _hoursWorked;
    }

    function setRate(uint256 _hourlyRate) external onlyOwner nonZeroValue(_hourlyRate){
        hourlyRate = _hourlyRate;
    }

    function calculateTolSal() external onlyOwner returns (uint256){
        require(hourlyRate > 0, "Hourly Rate must be greater than 0");
        require(hoursWorked > 0, "Hours Worked must be greater than 0");
        return totalSalary = hourlyRate * hoursWorked;
    }


}

