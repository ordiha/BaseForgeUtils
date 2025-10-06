// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract FeedbackSetter {
    string public feedbackSet;

    event FeedbackSet(string feedback);

    function setFeedback(string memory feedback) public {
        feedbackSet = feedback;
        emit FeedbackSet(feedback);
    }

    function getFeedback() public view returns (string memory) {
        return feedbackSet;
    }
}
