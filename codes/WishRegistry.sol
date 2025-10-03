// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract WishRegistry {
    mapping(address => string[]) public wishes;

    event WishRegistered(string wish);

    function registerWish(string memory wish) public {
        wishes[msg.sender].push(wish);
        emit WishRegistered(wish);
    }

    function getWishes(address user) public view returns (string[] memory) {
        return wishes[user];
    }
}
