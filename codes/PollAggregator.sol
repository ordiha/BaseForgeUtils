// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract PollAggregator {
    mapping(uint256 => uint256) public pollResults;

    event PollResultUpdated(uint256 option, uint256 count);

    function updatePollResult(uint256 option, uint256 count) public {
        pollResults[option] = count;
        emit PollResultUpdated(option, count);
    }

    function getResult(uint256 option) public view returns (uint256) {
        return pollResults[option];
    }
}
