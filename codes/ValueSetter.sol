// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ValueSetter {
    uint256 public storedValue;

    event ValueSet(uint256 newValue);

    function setValue(uint256 value) public {
        storedValue = value;
        emit ValueSet(value);
    }

    function getValue() public view returns (uint256) {
        return storedValue;
    }
}
