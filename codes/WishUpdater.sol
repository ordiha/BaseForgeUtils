// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract WishUpdater {
    string public wish;

    event WishUpdated(string newWish);

    function updateWish(string memory newWish) public {
        wish = newWish;
        emit WishUpdated(newWish);
    }

    function getWish() public view returns (string memory) {
        return wish;
    }
}
