// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract BalanceTracker {
    mapping(address => uint256) public balances;

    event BalanceUpdated(address indexed user, uint256 balance);

    function updateBalance(uint256 amount) public {
        balances[msg.sender] = amount;
        emit BalanceUpdated(msg.sender, amount);
    }

    function getBalance(address user) public view returns (uint256) {
        return balances[user];
    }
}
