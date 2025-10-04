// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract BadgeIssuer {
    mapping(address => string) public badges;

    event BadgeIssued(string badge);

    function issueBadge(string memory badge) public {
        badges[msg.sender] = badge;
        emit BadgeIssued(badge);
    }

    function getBadge(address user) public view returns (string memory) {
        return badges[user];
    }
}
