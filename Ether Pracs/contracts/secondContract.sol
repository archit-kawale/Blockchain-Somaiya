// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract arrayEx {
    // uint[10] public num;
    uint[] public num;
    uint i;
    function initializeArray() public {
    //     do {
    //         num[i] = i*i;
    //         i++;
    //     } 
    //     while (i<10);
    // }

    i++;
    num.push(i*i);

    }
}