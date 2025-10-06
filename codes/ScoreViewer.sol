// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ScoreViewer {
    mapping(address => bool) public viewedScores;

    event ScoreViewed(address user);

    function viewScore() public {
        viewedScores[msg.sender] = true;
        emit ScoreViewed(msg.sender);
    }

    function isViewed(address user) public view returns (bool) {
        return viewedScores[user];
    }
}
