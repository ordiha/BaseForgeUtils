// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract TodoViewer {
    mapping(address => bool) public viewedTodos;

    event TodoViewed(address user);

    function viewTodo() public {
        viewedTodos[msg.sender] = true;
        emit TodoViewed(msg.sender);
    }

    function isViewed(address user) public view returns (bool) {
        return viewedTodos[user];
    }
}
