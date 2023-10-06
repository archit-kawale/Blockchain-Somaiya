// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract ToDo {
    struct task {
        bool isComplete;
        string description;
    }

    mapping(address=>task[]) private users;

    function addTask (string calldata _description) external {
        users[msg.sender].push(task({
            isComplete: false,
            description: _description
        }));
    }

    function getCount() external view returns (uint256) {
        return users[msg.sender].length;
    }

    function deleteTask(uint index) external {
        delete users[msg.sender][index];
    }
}   