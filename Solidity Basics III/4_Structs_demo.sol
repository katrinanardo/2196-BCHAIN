// SPDX-License-Identifier: MIT

pragma solidity ^0.8.20;

struct Todo {
    string text;
    bool completed;
}

contract Todos {
    // An array of todos 
    Todo[] public todos;
}