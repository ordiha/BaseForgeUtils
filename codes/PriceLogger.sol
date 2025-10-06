// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract PriceLogger {
    uint256 public priceLog;

    event PriceLogged(uint256 price);

    function logPrice(uint256 price) public {
        priceLog = price;
        emit PriceLogged(price);
    }

    function getLog() public view returns (uint256) {
        return priceLog;
    }
}
