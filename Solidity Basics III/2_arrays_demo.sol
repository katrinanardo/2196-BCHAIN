// SPDX-License-Identifier: MIT

pragma solidity ^0.8.20;

contract MidtermArray{
    uint[] public arr;
    uint[] public arr2 = [1, 2, 3];
    uint[10] public myFixedSizeArr;

constructor() {
    myFixedSizeArr = [1, 2, 3, 4, 5];
}


function get(uint i) public view returns (uint){
    return arr[i];
}

function getArr() public view returns (uint[] memory) {
    return arr;
}

function push(uint i) public {
    arr.push(i);
}

function pop() public {
    arr.pop();
}

function remove(uint index) public {
    delete arr[index];
}

}