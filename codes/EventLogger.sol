// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract EventLogger {
    bytes32 public logHash;

    event EventLogged(bytes32 hash);

    function logEvent(bytes32 hash) public {
        logHash = hash;
        emit EventLogged(hash);
    }

    function getLog() public view returns (bytes32) {
        return logHash;
    }
}
