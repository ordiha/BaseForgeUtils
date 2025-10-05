// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract BadgeViewer {
    mapping(address => bool) public viewedBadges;

    event BadgeViewed(address user);

    function viewBadge() public {
        viewedBadges[msg.sender] = true;
        emit BadgeViewed(msg.sender);
    }

    function isViewed(address user) public view returns (bool) {
        return viewedBadges[user];
    }
}
