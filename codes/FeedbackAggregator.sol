// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract FeedbackAggregator {
    uint256 public feedbackCount;

    event FeedbackAggregated(uint256 count);

    function aggregateFeedback() public {
        feedbackCount++;
        emit FeedbackAggregated(feedbackCount);
    }

    function getCount() public view returns (uint256) {
        return feedbackCount;
    }
}
