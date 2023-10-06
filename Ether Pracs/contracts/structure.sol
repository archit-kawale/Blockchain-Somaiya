// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

struct employee {
    uint id;
    string name;
    string gender;
}

contract tryEmployee {
    employee  public e;
    function setEmployee(uint num, string memory n, string memory g) public {
        e.id = num;
        e.name = n;
        e.gender = g;
    }
}