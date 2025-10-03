// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract FeedbackVault {
    string[] public feedback;

    event FeedbackSubmitted(string message);

    function submitFeedback(string memory message) public {
        feedback.push(message);
        emit FeedbackSubmitted(message);
    }

    function getFeedback(uint256 index) public view returns (string memory) {
        require(index < feedback.length, "Invalid index");
        return feedback[index];
    }
}
