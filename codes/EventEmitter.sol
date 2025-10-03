// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract EventEmitter {
    uint256 public eventCount;
    string[] public events;

    event LogEvent(string message);

    function emitEvent(string memory message) public {
        events.push(message);
        eventCount++;
        emit LogEvent(message);
    }

    function getEvent(uint256 index) public view returns (string memory) {
        require(index < events.length, "Invalid index");
        return events[index];
    }
}
