// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract DonationVault {
    uint256 public totalDonations;

    event DonationMade(uint256 amount);

    function makeDonation() public payable {
        totalDonations += msg.value;
        emit DonationMade(msg.value);
    }

    function getTotal() public view returns (uint256) {
        return totalDonations;
    }
}
