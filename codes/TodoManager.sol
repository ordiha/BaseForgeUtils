// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract TodoManager {
    string[] public todos;

    event TodoAdded(string todo);

    function addTodo(string memory todo) public {
        todos.push(todo);
        emit TodoAdded(todo);
    }

    function getTodo(uint256 index) public view returns (string memory) {
        require(index < todos.length, "Invalid index");
        return todos[index];
    }
}
