// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract NonceManager {
    mapping(address => uint256) public nonces;

    event NonceUpdated(address indexed user, uint256 nonce);

    function incrementNonce() public {
        nonces[msg.sender]++;
        emit NonceUpdated(msg.sender, nonces[msg.sender]);
    }

    function getNonce(address user) public view returns (uint256) {
        return nonces[user];
    }
}
