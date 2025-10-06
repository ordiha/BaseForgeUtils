// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract PollLogger {
    bytes32 public pollLog;

    event PollLogged(bytes32 log);

    function logPoll(bytes32 log) public {
        pollLog = log;
        emit PollLogged(log);
    }

    function getLog() public view returns (bytes32) {
        return pollLog;
    }
}
