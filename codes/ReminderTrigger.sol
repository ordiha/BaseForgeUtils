// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ReminderTrigger {
    mapping(address => uint256) public reminders;

    event ReminderTriggered(uint256 time);

    function triggerReminder(uint256 time) public {
        reminders[msg.sender] = time;
        emit ReminderTriggered(time);
    }

    function getReminder(address user) public view returns (uint256) {
        return reminders[user];
    }
}
