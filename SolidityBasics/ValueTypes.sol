// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.20;

contract ValueTypes {
    bool public b = true;
    uint public u = 123;
    

    int public i = 123;

    int public minInt = type(int).min;
    int public maxInt = type(int).max;
    address public addr = 0x388C818CA8B9251b393131C08a736A67ccB19297;

}
