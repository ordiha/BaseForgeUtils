// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract FeedbackReceiver {
    address public receiver;

    event FeedbackReceived(address sender);

    constructor() {
        receiver = msg.sender;
    }

    function receiveFeedback() public {
        emit FeedbackReceived(msg.sender);
    }

    function getReceiver() public view returns (address) {
        return receiver;
    }
}
