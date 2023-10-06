// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract eventEg {
    event logme (address to, string message, uint num);

    function logFunc (uint x, string memory m) public {
        emit logme(msg.sender, m, x);
    }
}

contract errorEg {
    function test1 (uint age) public pure returns (uint) {
        // require(age>17, "Invalid Age");
        // return age;

        if(age>17){
            return age;
        }
        else {
            revert("Invalid Age");
        }
    }
}