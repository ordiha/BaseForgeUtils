// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract DonationSetter {
    uint256 public donationSet;

    event DonationSet(uint256 amount);

    function setDonation(uint256 amount) public {
        donationSet = amount;
        emit DonationSet(amount);
    }

    function getDonation() public view returns (uint256) {
        return donationSet;
    }
}
