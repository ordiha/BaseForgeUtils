// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract WishLogger {
    bytes32 public wishLog;

    event WishLogged(bytes32 log);

    function logWish(bytes32 log) public {
        wishLog = log;
        emit WishLogged(log);
    }

    function getLog() public view returns (bytes32) {
        return wishLog;
    }
}
