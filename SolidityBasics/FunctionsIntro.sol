// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.20;

contract FunctionIntro {
    function add(uint x, uint y) external pure returns (uint) {
        return (x+y);
    }
}