// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract helloWorld {
    string public message;
    function setpassage(string memory m) public {
        message = m;
    }
    function insertName(uint uid) public pure returns (uint) {
        return uid*uid;
    }
    constructor() {
        message = "FarzanIsIntoGods";
        owner = msg.sender;
    }
    address public owner;
}

contract demo {
    helloWorld a = new helloWorld();
    function xyz(uint x) internal view returns (uint) {
        return a.insertName(x);
    }
}

// contract pqr is demo {
//     function element (uint y) public view returns (uint) {
//         return a.insertName(uid); 
//     }
