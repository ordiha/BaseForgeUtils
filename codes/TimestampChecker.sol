// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract TimestampChecker {
    uint256 public lastTimestamp;

    event TimestampChecked(uint256 timestamp);

    function checkTimestamp() public {
        lastTimestamp = block.timestamp;
        emit TimestampChecked(lastTimestamp);
    }

    function isRecent(uint256 threshold) public view returns (bool) {
        return block.timestamp - lastTimestamp <= threshold;
    }
}
