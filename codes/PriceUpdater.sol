// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract PriceUpdater {
    uint256 public price;

    event PriceUpdated(uint256 newPrice);

    function updatePrice(uint256 newPrice) public {
        price = newPrice;
        emit PriceUpdated(newPrice);
    }

    function getPrice() public view returns (uint256) {
        return price;
    }
}
