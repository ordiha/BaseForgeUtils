// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ScoreUpdater {
    uint256 public score;

    event ScoreUpdated(uint256 newScore);

    function updateScore(uint256 newScore) public {
        score = newScore;
        emit ScoreUpdated(newScore);
    }

    function getScore() public view returns (uint256) {
        return score;
    }
}
