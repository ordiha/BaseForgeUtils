// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract BadgeSetter {
    string public badgeSet;

    event BadgeSet(string badge);

    function setBadge(string memory badge) public {
        badgeSet = badge;
        emit BadgeSet(badge);
    }

    function getBadge() public view returns (string memory) {
        return badgeSet;
    }
}
