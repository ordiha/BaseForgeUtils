// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract DonationReceiver {
    address public owner;

    event DonationReceived(uint256 amount);

    constructor() {
        owner = msg.sender;
    }

    function receiveDonation() public payable {
        emit DonationReceived(msg.value);
    }

    function withdraw() public {
        require(msg.sender == owner, "Only owner");
        payable(owner).transfer(address(this).balance);
    }
}
