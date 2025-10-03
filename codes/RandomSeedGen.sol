// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract RandomSeedGen {
    uint256 public seed;

    event SeedGenerated(uint256 seed);

    function generateSeed(uint256 input) public {
        seed = uint256(keccak256(abi.encodePacked(block.timestamp, input, msg.sender)));
        emit SeedGenerated(seed);
    }

    function getSeed() public view returns (uint256) {
        return seed;
    }
}
