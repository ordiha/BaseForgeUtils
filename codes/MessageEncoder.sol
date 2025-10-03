// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MessageEncoder {
    bytes public encodedMessage;

    event MessageEncoded(bytes message);

    function encodeMessage(string memory message) public {
        encodedMessage = abi.encodePacked(message);
        emit MessageEncoded(encodedMessage);
    }

    function decodeMessage() public view returns (string memory) {
        return string(encodedMessage);
    }
}
