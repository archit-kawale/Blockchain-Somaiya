// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Contract4Assigment {
    address public owner;
    uint public num1;
    uint public num2;
    string public message;

    constructor() {
        owner = msg.sender;
    }

    function add (uint a, uint b) public pure returns (uint sum) {
        return a+b;
    }

    function subtract (uint c, uint d) public pure returns (uint difference) {
        return c-d;
    }
}