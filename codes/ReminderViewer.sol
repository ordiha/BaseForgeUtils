// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ReminderViewer {
    mapping(address => string) public reminders;

    event ReminderViewed(string reminder);

    function viewReminder(string memory reminder) public {
        reminders[msg.sender] = reminder;
        emit ReminderViewed(reminder);
    }

    function getReminder(address user) public view returns (string memory) {
        return reminders[user];
    }
}
