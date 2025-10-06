// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract GasTracker {
    uint256 public lastGasUsed;

    event GasTracked(uint256 gas);

    function trackGas() public {
        lastGasUsed = gasleft();
        emit GasTracked(lastGasUsed);
    }

    function getGas() public view returns (uint256) {
        return lastGasUsed;
    }
}
