// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract BlockNumberLogger {
    uint256 public lastBlock;

    event BlockLogged(uint256 blockNumber);

    function logBlock() public {
        lastBlock = block.number;
        emit BlockLogged(lastBlock);
    }

    function getBlock() public view returns (uint256) {
        return lastBlock;
    }
}
