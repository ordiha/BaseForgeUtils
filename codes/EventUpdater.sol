// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract EventUpdater {
    uint256 public eventData;

    event EventUpdated(uint256 data);

    function updateEvent(uint256 data) public {
        eventData = data;
        emit EventUpdated(data);
    }

    function getEvent() public view returns (uint256) {
        return eventData;
    }
}
