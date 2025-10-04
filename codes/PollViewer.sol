// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract PollViewer {
    mapping(uint256 => bool) public pollViews;

    event PollViewed(uint256 pollId);

    function viewPoll(uint256 pollId) public {
        pollViews[pollId] = true;
        emit PollViewed(pollId);
    }

    function isViewed(uint256 pollId) public view returns (bool) {
        return pollViews[pollId];
    }
}
