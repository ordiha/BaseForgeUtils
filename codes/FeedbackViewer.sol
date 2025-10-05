// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract FeedbackViewer {
    string public feedback;

    event FeedbackViewed(string feedback);

    function viewFeedback(string memory fb) public {
        feedback = fb;
        emit FeedbackViewed(fb);
    }

    function getFeedback() public view returns (string memory) {
        return feedback;
    }
}
