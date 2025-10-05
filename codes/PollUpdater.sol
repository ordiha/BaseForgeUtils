// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract PollUpdater {
    uint256 public pollValue;

    event PollUpdated(uint256 value);

    function updatePoll(uint256 value) public {
        pollValue = value;
        emit PollUpdated(value);
    }

    function getPoll() public view returns (uint256) {
        return pollValue;
    }
}
