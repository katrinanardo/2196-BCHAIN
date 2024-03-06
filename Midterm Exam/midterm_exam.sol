// SPDX-License-Identifier: MIT

pragma solidity ^0.8.3;

contract GradeContraCct {
    string public studName;
    uint public prelimGrade;
    uint public midtermGrade;
    uint public finalGrade;
    uint8 public gradeStatus;
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    function setName(string calldata _studName) external {
       studName = _studName;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Caller is not owner");
        _;
    }

    modifier  validGrade(uint grade){
        require(grade < 100, "Grade must be from 0 to 100");
        _;
    }

    function setPrelimGrade(uint _prelimGrade) external onlyOwner validGrade(_prelimGrade){
       prelimGrade = _prelimGrade;
    }

    function setMidtermGrade(uint _midtermGrade) external onlyOwner validGrade(_midtermGrade){
       midtermGrade = _midtermGrade;
    }

    function setFinalGrade(uint _finalGrade) external onlyOwner validGrade(_finalGrade){
       finalGrade = _finalGrade;
    }

    function calculateGrade() external  onlyOwner{
        if (prelimGrade > 100 && midtermGrade > 100 && finalGrade > 100){
        require(prelimGrade < 100, "Grade must be from 0 to 100");
        }else{        
        if((prelimGrade + midtermGrade + finalGrade) > 75){
            gradeStatus = 1;
        } 
        else{
            gradeStatus = 0;
        }
        }

    }

}